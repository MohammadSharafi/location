import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:location_mohammad_sharafi/project/presentation/pages/location_pin/screens/location_pin_view.dart';


@RoutePage()
class LocationPinPage extends StatelessWidget {
  const LocationPinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  LocationPinView();
  }
}
