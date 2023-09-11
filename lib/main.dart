import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:location_mohammad_sharafi/project/presentation/app.dart';

import 'common/helpers/bloc_observer.dart';
import 'common/services/app_service.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  HttpOverrides.global = new MyHttpOverrides();

  await dotenv.load(fileName: '.env.prd');

  await AppService.init();

  runZonedGuarded<Future<void>>(() async {
    BlocOverrides.runZoned(() => runApp(App()),
        blocObserver: AppBlocObserver());
  }, (error, stack) => () {});
}
