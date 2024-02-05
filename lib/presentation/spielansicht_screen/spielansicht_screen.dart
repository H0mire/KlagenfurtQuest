import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';
import 'package:klagenfurtquest_final/routes/app_routes.dart';

class SpielansichtScreen extends StatefulWidget {
  SpielansichtScreen({Key? key}) : super(key: key);

  @override
  _SpielansichtScreenState createState() => _SpielansichtScreenState();
}

class _SpielansichtScreenState extends State<SpielansichtScreen> {
  late Future<Position> currentPosition;

  @override
  void initState() {
    super.initState();
    currentPosition = getCurrentLocation();
  }

  Future<Position> getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    return position;
  }

  void onTapWeiter() {
    Navigator.pushNamed(context,
        AppRoutes.spielansichtStationStarten); // Beispielname "weiterScreen"
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Position>(
      future: currentPosition,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final currentPosition = snapshot.data!;
          return FlutterMap(
            options: MapOptions(
              initialCenter: latLng.LatLng(
                //currentPosition.latitude für die aktuelle Position des Users, jedoch Position des Emulators in USA
                46.625078,
                //currentPosition.longitude
                14.301721,
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
                    onTap: () => launchUrl(
                        Uri.parse('https://openstreetmap.org/copyright')),
                  ),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: latLng.LatLng(46.625931, 14.302870),
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
                    point: latLng.LatLng(
                      //currentPosition.latitude für die aktuelle Position des Users, jedoch Position des Emulators in USA
                      46.625078,
                      //currentPosition.longitude
                      14.301721,
                    ),
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
      },
    );
  }
}
