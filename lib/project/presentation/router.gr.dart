// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    LocationPinRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LocationPinPage(),
      );
    }
  };
}

/// generated route for
/// [LocationPinPage]
class LocationPinRoute extends PageRouteInfo<void> {
  const LocationPinRoute({List<PageRouteInfo>? children})
      : super(
          LocationPinRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationPinRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
