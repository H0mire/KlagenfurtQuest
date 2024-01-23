import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class TeacherloggedinmenuScreen extends StatelessWidget {
  const TeacherloggedinmenuScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 498.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgAppbackground,
                        height: 498.v,
                        width: 360.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: 259.h,
                          margin: EdgeInsets.only(top: 22.v),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Willkommen",
                                  style: CustomTextStyles.displaySmallffffa500,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                                TextSpan(
                                  text: "bei KlagenfurtQuest",
                                  style: CustomTextStyles.displaySmallffffffff,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildLoggedInMenu(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoggedInMenu(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 26.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.customBorderTL25,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 12.v),
            Text(
              "Willkommen",
              style: CustomTextStyles.displaySmallBold,
            ),
            SizedBox(height: 33.v),
            CustomOutlinedButton(
              text: "Raum erstellen",
              margin: EdgeInsets.only(left: 8.h),
            ),
            SizedBox(height: 17.v),
            CustomOutlinedButton(
              text: "Archiv",
              margin: EdgeInsets.only(left: 8.h),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
              buttonTextStyle: theme.textTheme.displaySmall!,
            ),
            SizedBox(height: 16.v),
            CustomOutlinedButton(
              text: "Ausloggen",
              margin: EdgeInsets.only(left: 8.h),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
              buttonTextStyle: theme.textTheme.displaySmall!,
            ),
            SizedBox(height: 32.v),
            Text(
              "Hilfe",
              style: theme.textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
