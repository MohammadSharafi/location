import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;


class SocketService {
  static SocketService? _instance;
  static final Map<String, IO.Socket> _sockets = {};
  static final String _serverUrl = dotenv.get('SOCKET_URL');

  SocketService._();

  static SocketService getInstance() {
    _instance ??= SocketService._();
    return _instance!;
  }
  Future<List<IO.Socket>> connectAll(List<String> paths) async {

    final futures = paths.map((path) async {
      if (_sockets.containsKey(path)) {
        return _sockets[path]!;
      }

      IO.Socket socket = IO.io(
        _serverUrl,
        IO.OptionBuilder()
            .setPath(path)
            .setTransports(['websocket']).enableForceNew()
            .enableReconnection()
            .enableForceNew()
            .enableAutoConnect()
            .setExtraHeaders({
          //'Authorization': 'Bearer $token',
          'rejectUnauthorized': false,
        })
            .build(),
      );


      _sockets[path] = socket;

      // Add error handler
      socket.on('error', (data) {
        print('Error on $path: $data');
      });

      // Add connect handler
      socket.on('connect', (data) {
        print('Disconnected from $path');
      });

      // Add disconnect handler
      socket.on('disconnect', (data) {
        print('Disconnected from $path');
      });

      // Wait for socket to connect
      await socket.connect();

      return socket;
    });

    return Future.wait(futures);
  }

  Future<IO.Socket> connect(String path) async {
    if (_sockets.containsKey(path)) {
      return _sockets[path]!;
    }

    final socket = IO.io(
      _serverUrl,
      IO.OptionBuilder()
          .setPath(path)
          .setTransports(['websocket'])
          .enableReconnection().enableForceNew()
          .enableAutoConnect()
          //.setExtraHeaders({'Authorization': 'Bearer $token'})
          .build(),
    );

    _sockets[path] = socket;

    // Add error handler
    socket.on('error', (data) {
      print('Error on $path: $data');
    });

    // Add connect handler
    socket.on('connect', (data) {
      print('Connected to $path');
    });

    // Add disconnect handler
    socket.on('disconnect', (data) {
      print('Disconnected from $path');
    });

    return socket;
  }

  void send(String path, String eventName, dynamic data) {
    final socket = _sockets[path];
    socket?.emit(eventName, data);
  }

  void on(String path, String eventName, Function callback) {
    final socket = _sockets[path];
    socket?.on(eventName, (data) {
      print('Received $eventName on $path: $data');
      callback(data);
    });
  }

  Future<void> disconnect(String path) async {
    final socket = _sockets[path];
    if (socket != null) {
      await socket.disconnect();
      _sockets.remove(path);
    }
  }
}
