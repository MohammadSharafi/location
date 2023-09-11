import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart'; // For working with latitude and longitude
import '../../../../../common/helpers/map_helper.dart';
import '../../../../application/location_pin/location_pin_bloc.dart';
import '../widgets/loading.dart';






// Create a Flutter widget that uses the BLoC.
class LocationPinView extends StatelessWidget {
  final MapController mapController = MapController();

  late final List<Marker> markers;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LocationPinBloc, LocationPinState>(
        builder: (context, state) {
          return
          state.locationPinFailureOrSuccessOption.fold(() => Container(child: mapLoading(),), (a) => a.fold((l) => Container(width:double.infinity,height:double.infinity,color:Colors.red,child: Center(child: Text('Error',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w900),)),), (r) =>
              FlutterMap(
                mapController: mapController,
            options: MapOptions(
              zoom: 9.0, // Set the initial zoom level
              center:calculateCenter(r['data']!)

            ),
                children: [
                  TileLayer(
                    urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                    subdomains: const ['a', 'b', 'c'],
                  ),
                  MarkerClusterLayerWidget(
                    options: MarkerClusterLayerOptions(
                      maxClusterRadius: 45,
                      size: const Size(40, 40),
                      fitBoundsOptions: const FitBoundsOptions(
                        padding: EdgeInsets.all(50),
                        maxZoom: 20,
                      ),
                      markers:r['data']!.map((e) => Marker(point: LatLng(e.latitude, e.longitude),builder:(context){
                        return GestureDetector(
                            onTap: (){
                              // Zoom to the tapped marker
                              mapController.move(
                                LatLng(e.latitude, e.longitude),
                                15.0,
                              );
                            },
                            child: Container(width: 20,height: 20,child: Icon(Icons.location_city,color: Colors.blueAccent,),));
                      } )).toList(),
                      builder: (context, markers) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue),
                          child: Center(
                            child: Text(
                              markers.length.toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],


          )));

        },
      ),
    );
  }
}



