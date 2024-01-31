import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:url_launcher/url_launcher.dart';

class SpielansichtScreen extends StatelessWidget {
  SpielansichtScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter: latLng.LatLng(46.624826, 14.305265),
        initialZoom: 16,
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
      ],
    );
  }

  Widget _buildDirectionsSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 68.h,
        right: 27.h,
        bottom: 16.v,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.customBorderTL25,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.customBorderTL25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 4.v,
                bottom: 14.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Gerade aus weiter!",
                    style: CustomTextStyles.titleLargeSemiBold,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6.v),
                    child: Text(
                      "500m",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 69.adaptSize,
              width: 69.adaptSize,
            ),
            SizedBox(width: 16.h), // Platzhalter für den Abstand zum Button
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  onTapWeiter(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(16.0), // Ändere den Radius
                  ),
                  padding: EdgeInsets.all(16.0), // Ändere das Padding
                  minimumSize: Size(0, 56), // Ändere die Mindestgröße
                ),
                child: Text(
                  'Button',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the spielansicht_station_starten when the action is triggered.
  onTapWeiter(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spielansichtStationStarten);
  }
}
