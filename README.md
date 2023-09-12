LocationPinView:

-Utilized Flutter's FlutterMap widget to display locations on a map.

-Employed BlocBuilder to update the UI based on the LocationPinBloc state.

-Incorporated MarkerClusterLayerWidget to efficiently cluster map markers.

-Added a GestureDetector to enable users to zoom in on tapped markers.

-Utilized the 'freezed' package for immutability and type-safe code.




LocationPinBloc:

-Established a WebSocket connection using the 'web_socket_channel' package.

-Maintained a list of accumulated location data for efficient updates.

-Implemented Bloc's event handling using the on method.

-Properly closed the WebSocket channel when the Bloc is closed.

-Handled WebSocket messages to collect and update location data.

-Leveraged the 'dartz' package for handling Either values (success or failure).

-Managed various location-related states and errors in LocationPinState.

-Ensured proper initialization of the Bloc using the constructor.




LocationPinFailure:

Defined various failure scenarios using sealed classes with the 'freezed' package.
Distinguished failures like server errors, general failures, errors, and empty data.



App:

-Created a MultiBlocProvider to provide the LocationPinBloc to the app.

-Initialized the AutoRouter for navigation.

-Configured the MaterialApp with routing and provided it with a global navigator key.

-Implemented the getIt method from dependency injection for Bloc and routing setup.

