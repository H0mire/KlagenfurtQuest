import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';
import 'package:klagenfurtquest_final/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TeacherregisterScreen extends StatelessWidget {
  TeacherregisterScreen({Key? key}) : super(key: key);

  TextEditingController editTextController = TextEditingController();

  TextEditingController recMailController = TextEditingController();

  TextEditingController recPasswordController = TextEditingController();

  TextEditingController recPasswordConfirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                                    margin: EdgeInsets.only(top: 20.v),
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
                  _buildMenu(context)
                ]))));
  }

  /// Section Widget
  Widget _buildMenu(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v),
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.customBorderTL25),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text("Benutzername",
                          style: theme.textTheme.titleLarge))),
              SizedBox(height: 1.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: CustomTextFormField(controller: editTextController)),
              SizedBox(height: 11.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Text("Schul Email",
                          style: theme.textTheme.titleLarge))),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: CustomTextFormField(controller: recMailController)),
              SizedBox(height: 13.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 26.h),
                      child:
                          Text("Passwort", style: theme.textTheme.titleLarge))),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: CustomTextFormField(
                      controller: recPasswordController, obscureText: true)),
              SizedBox(height: 17.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text("Passwort bestätigen",
                          style: theme.textTheme.titleLarge))),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: CustomTextFormField(
                      controller: recPasswordConfirmController,
                      textInputAction: TextInputAction.done,
                      obscureText: true)),
              SizedBox(height: 26.v),
              CustomOutlinedButton(
                  text: "Registrieren",
                  margin: EdgeInsets.only(left: 8.h),
                  onPressed: () {
                    onTapRegistrieren(context);
                  }),
              SizedBox(height: 12.v),
              Text("Hilfe", style: theme.textTheme.titleLarge),
              SizedBox(height: 10.v)
            ])));
  }

  /// Navigates to the teacherloggedinmenuScreen when the action is triggered.
  onTapRegistrieren(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.teacherloggedinmenuScreen);
  }
}
