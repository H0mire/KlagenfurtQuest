import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';

class StudentlocationviewScreen extends StatelessWidget {
  StudentlocationviewScreen({Key? key})
      : super(
          key: key,
        );

//für das Spectaten der Schüler für den Lehrer, nicht implementiert
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildStudentLocationView(context),
      ),
    );
  }

  //Widget zum Erstellen der Map
  Widget _buildStudentLocationView(BuildContext context) {
    return SizedBox(
      height: SizeUtils.height,
      width: double.maxFinite,
      child: GoogleMap(
        //Implementation OSM, CurrentLocationPlayer etc.
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
