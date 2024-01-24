import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';

class SpielansichtScreen extends StatelessWidget {
  SpielansichtScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup95,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 16.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildMapSection(context),
                Spacer(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildDirectionsSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return SizedBox(
      height: 497.v,
      width: 351.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
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

  /// Section Widget
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
}

/// Navigates to the teacherloggedinmenuScreen when the action is triggered.
onTapWeiter(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.spielansichtStationStarten);
}
