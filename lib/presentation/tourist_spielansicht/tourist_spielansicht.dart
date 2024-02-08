import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:klagenfurtquest_final/presentation/LanguageService.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:url_launcher/url_launcher.dart';
import 'package:klagenfurtquest_final/routes/app_routes.dart';
import 'package:geolocator/geolocator.dart';
import 'package:klagenfurtquest_final/presentation/schillerpark_station_completion.dart';

class SpielansichtThreeScreen extends StatefulWidget {
  SpielansichtThreeScreen({Key? key}) : super(key: key);

  @override
  _SpielansichtScreenState createState() => _SpielansichtScreenState();
}

//Benötigte Variablen für die Map
//Da die currentLocation des Emulators in den USA ist, wurde eine fakeCurrentPosition in Klagenfurt verwendet
//Jedoch wurde auch die Version für den wirklichen Standort implementiert
class _SpielansichtScreenState extends State<SpielansichtThreeScreen> {
  late Timer timer;
  latLng.LatLng firstMarkerPosition = latLng.LatLng(46.625931, 14.302870);
  //late latLng.LatLng currentPosition;
  //für Position auf dem ersten Marker 46.625931, 14.302870
  //für Position auf fakeAusgangsPosition z.B.: 46.625078, 14.301721
  latLng.LatLng fakeCurrentPosition = latLng.LatLng(46.625931, 14.302870);

  @override
  void initState() {
    super.initState();
    //currentPosition = latLng.LatLng(46.616172, 14.313488); //loading-dummy
    getCurrentLocation(); // Initial Position abrufen
    timer = Timer.periodic(Duration(seconds: 3), (Timer t) {
      getCurrentLocation();
      checkDistance();
    });
  }

//Methode für Erhalt der aktuellen Position
  Future<void> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    setState(() {
      //für Position auf dem ersten Marker 46.625931, 14.302870
      //für Position auf fakeAusgangsPosition z.B.: 46.625078, 14.301721
      fakeCurrentPosition = latLng.LatLng(46.625931, 14.302870);
      //currentPosition = latLng.LatLng(position.latitude, position.longitude);
    });
  }

//Methode zum Überprüfen, wie weit Player von der Station entfernt ist - wenn innerhalb von 20 Metern, wird das PopUp zum Starten der Station angezeigt
  void checkDistance() {
    double distance = latLng.Distance().as(
      latLng.LengthUnit.Meter,
      //currentPosition.latidue, currentPosition.longitude
      latLng.LatLng(
          fakeCurrentPosition.latitude, fakeCurrentPosition.longitude),
      latLng.LatLng(
          firstMarkerPosition.latitude, firstMarkerPosition.longitude),
    );

    if (distance < 20) {
      onTapWeiter();
      timer.cancel(); // Stop the timer once the condition is met
    }

    if (isSchillerparkStationCompletedTourist) {
      Future.delayed(Duration(seconds: 2), () {
        onTapTourFinished(context);
      });
    }
  }

//Methode welche überprüft, ob Station bereits abgeschlossen ist, sonst wird PopUp nicht mehr angezeigt
  void onTapWeiter() {
    if (isSchillerparkStationCompletedTourist == false) {
      showStartStationDialog(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: latLng.LatLng(
          //currentPosition.latidue, currentPosition.longitude,
          fakeCurrentPosition.latitude,
          fakeCurrentPosition.longitude,
        ),
        initialZoom: 17.5,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.example.app',
        ),
        RichAttributionWidget(
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              onTap: () =>
                  launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
            ),
          ],
        ),
        MarkerLayer(
          markers: [
            //sobald Schillerpark-Station abgeschlossen ist, wird der Marker auf der Map entfernt
            if (!isSchillerparkStationCompletedTourist)
              Marker(
                point: firstMarkerPosition,
                width: 40,
                height: 40,
                child: GestureDetector(
                  onTap: onTapWeiter,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            Marker(
              //currentPosition,
              point: fakeCurrentPosition,
              width: 40,
              height: 40,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.my_location,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

//Methode für PopUp zum Starten der Station
  void showStartStationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Container(
            width: 332.0,
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        LanguageService.welcomeToStationText(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: Size(double.infinity, 60.0),
                        ),
                        onPressed: () {
                          onTapInfosStarten(context);
                        },
                        child: Text(
                          LanguageService.startGameText(),
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

//Navigator zu den Infos der Station
  onTapInfosStarten(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spielansichtStationInfosOneScreen);
  }
//Navigator zum Endscreen, wenn Station abgeschlossen
  onTapTourFinished(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spielansichtQuizGeschafftScreen);
  }
}
