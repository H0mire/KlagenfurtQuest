import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class TouristmenuScreen extends StatelessWidget {
  const TouristmenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                          height: 498.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgAppbackground,
                                height: 498.v,
                                width: 360.h,
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    width: 280.h,
                                    margin: EdgeInsets.only(top: 22.v),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Willkommen bei",
                                              style: CustomTextStyles
                                                  .displaySmallffffa500),
                                          TextSpan(
                                              text: "KlagenfurtQuest",
                                              style: CustomTextStyles
                                                  .displaySmallffffffff)
                                        ]),
                                        textAlign: TextAlign.left)))
                          ]))),
                  _buildTouristMenu(context)
                ]))));
  }

  /// Section Widget
  Widget _buildTouristMenu(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 23.v),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusStyle.customBorderTL25,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tourist", style: CustomTextStyles.displaySmallBold),
                  SizedBox(height: 28.v),
                  CustomOutlinedButton(
                    text: "Starten",
                    margin: EdgeInsets.only(left: 8.h),
                    onPressed: () {
                      onTapStarten(context);
                    },
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  SizedBox(height: 15.v),
                  CustomOutlinedButton(
                      text: "Zurück",
                      margin: EdgeInsets.only(left: 8.h),
                      buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
                      buttonTextStyle: theme.textTheme.displaySmall!,
                      onPressed: () {
                        onTapZurck(context);
                      }),
                  SizedBox(height: 31.v),
                  Text("Hilfe", style: theme.textTheme.titleLarge),
                  SizedBox(height: 2.v)
                ])));
  }

  /// Navigates to the touristselecttourScreen when the action is triggered.
  onTapStarten(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.touristselecttourScreen);
  }

  /// Navigates to the mainmenuScreen when the action is triggered.
  onTapZurck(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenuScreen);
  }
}
