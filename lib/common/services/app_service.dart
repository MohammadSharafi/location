// ignore_for_file: always_declare_return_types



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../injection.dart';
import '../../project/presentation/router.dart';


abstract class AppService {


  static init() async {
    WidgetsFlutterBinding.ensureInitialized();



    /// make navbar color transparent
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);



    configureInjection(Environment.prod);

    registerSingletons();




  }
}

void registerSingletons() {
  getIt.registerSingleton<AppRouter>(AppRouter());
}





