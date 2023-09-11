import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location_mohammad_sharafi/project/presentation/router.dart';
import '../../injection.dart';
import '../application/location_pin/location_pin_bloc.dart';







final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget   {

 



  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<LocationPinBloc>(
          create: (_) => getIt<LocationPinBloc>()
            ..add(const LocationPinEvent.getLocationPin()),
        ),

      ],
      child: MaterialApp.router(
        title: 'Location',
        key: navigatorKey,
        debugShowCheckedModeBanner: false,
        routerDelegate: AutoRouterDelegate(router),
        routeInformationParser: router.defaultRouteParser(),
      ),
    );
  }
}
