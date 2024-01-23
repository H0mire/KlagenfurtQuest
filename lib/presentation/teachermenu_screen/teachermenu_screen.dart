import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class TeachermenuScreen extends StatelessWidget {
  const TeachermenuScreen({Key? key}) : super(key: key);

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
                                    width: 259.h,
                                    margin: EdgeInsets.only(top: 22.v),
                                    decoration: AppDecoration.outlineBlack,
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Willkommen",
                                              style: CustomTextStyles
                                                  .displaySmallffffa500),
                                          TextSpan(text: " "),
                                          TextSpan(
                                              text: "bei KlagenfurtQuest",
                                              style: CustomTextStyles
                                                  .displaySmallffffffff)
                                        ]),
                                        textAlign: TextAlign.left)))
                          ]))),
                  _buildTeacherMenuColumn(context)
                ]))));
  }

  /// Section Widget
  Widget _buildTeacherMenuColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 26.v),
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.customBorderTL25),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 16.v),
              Text("Lehrer", style: CustomTextStyles.displaySmallBold),
              SizedBox(height: 29.v),
              CustomOutlinedButton(
                  text: "Anmelden",
                  margin: EdgeInsets.only(left: 8.h),
                  onPressed: () {
                    onTapAnmelden(context);
                  }),
              SizedBox(height: 17.v),
              CustomOutlinedButton(
                  text: "Registrieren",
                  margin: EdgeInsets.only(left: 8.h),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
                  buttonTextStyle: theme.textTheme.displaySmall!,
                  onPressed: () {
                    onTapRegistrieren(context);
                  }),
              SizedBox(height: 16.v),
              CustomOutlinedButton(
                  text: "Zurück",
                  margin: EdgeInsets.only(left: 8.h),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
                  buttonTextStyle: theme.textTheme.displaySmall!,
                  onPressed: () {
                    onTapZurck(context);
                  }),
              SizedBox(height: 31.v),
              Text("Hilfe", style: theme.textTheme.titleLarge)
            ])));
  }

  /// Navigates to the teacherloginScreen when the action is triggered.
  onTapAnmelden(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.teacherloginScreen);
  }

  /// Navigates to the teacherregisterScreen when the action is triggered.
  onTapRegistrieren(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.teacherregisterScreen);
  }

  /// Navigates to the mainmenuScreen when the action is triggered.
  onTapZurck(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenuScreen);
  }
}
