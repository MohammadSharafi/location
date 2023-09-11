
import 'package:auto_route/auto_route.dart';
import 'package:location_mohammad_sharafi/project/presentation/pages/location_pin/location_pin_page.dart';


part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
// extend the generated private router
class AppRouter extends _$AppRouter {

  @override
  RouteType get defaultRouteType => RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: LocationPinRoute.page, path: '/'),


  ];
}
