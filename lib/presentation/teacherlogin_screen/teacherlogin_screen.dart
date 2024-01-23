import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';
import 'package:klagenfurtquest_final/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TeacherloginScreen extends StatelessWidget {
  TeacherloginScreen({Key? key}) : super(key: key);

  TextEditingController recMailController = TextEditingController();

  TextEditingController recPasswordController = TextEditingController();

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
                  _buildTeacherLoginMenu(context)
                ]))));
  }

  /// Section Widget
  Widget _buildTeacherLoginMenu(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.customBorderTL25),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                  width: 215.h,
                  child: Text("Willkommen zurück!",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.displaySmallSemiBold)),
              SizedBox(height: 18.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Text("Schul E-Mail",
                          style: theme.textTheme.titleLarge))),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: CustomTextFormField(controller: recMailController)),
              SizedBox(height: 15.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child:
                          Text("Passwort", style: theme.textTheme.titleLarge))),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: CustomTextFormField(
                      controller: recPasswordController,
                      textInputAction: TextInputAction.done,
                      obscureText: true)),
              SizedBox(height: 26.v),
              CustomOutlinedButton(
                  text: "Anmelden",
                  margin: EdgeInsets.only(left: 8.h),
                  onPressed: () {
                    onTapAnmelden(context);
                  }),
              SizedBox(height: 12.v),
              Text("Hilfe", style: theme.textTheme.titleLarge),
              SizedBox(height: 9.v)
            ])));
  }

  /// Navigates to the teacherloggedinmenuScreen when the action is triggered.
  onTapAnmelden(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.teacherloggedinmenuScreen);
  }
}
