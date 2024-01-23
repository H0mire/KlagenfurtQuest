import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';
import 'package:klagenfurtquest_final/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class StudentmenuScreen extends StatelessWidget {
  StudentmenuScreen({Key? key}) : super(key: key);

  TextEditingController roomNumberController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
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
                                                    imagePath: ImageConstant
                                                        .imgAppbackground,
                                                    height: 498.v,
                                                    width: 360.h,
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Container(
                                                        width: 280.h,
                                                        margin: EdgeInsets.only(
                                                            top: 22.v),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                          "Willkommen bei",
                                                                      style: CustomTextStyles
                                                                          .displaySmallffffa500),
                                                                  TextSpan(
                                                                      text:
                                                                          "KlagenfurtQuest",
                                                                      style: CustomTextStyles
                                                                          .displaySmallffffffff)
                                                                ]),
                                                            textAlign: TextAlign
                                                                .left)))
                                              ]))),
                                  _buildStudentMenu(context)
                                ])))))));
  }

  /// Section Widget
  Widget _buildStudentMenu(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 25.v),
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
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text("Schüler", style: CustomTextStyles.displaySmallBold),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: CustomTextFormField(
                      controller: roomNumberController,
                      hintText: "Raumnummer")),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: CustomTextFormField(
                      controller: nameController,
                      hintText: "Spitzname",
                      textInputAction: TextInputAction.done)),
              SizedBox(height: 13.v),
              CustomOutlinedButton(
                text: "Beitreten",
                margin: EdgeInsets.only(left: 8.h),
                onPressed: () {
                  onTapBeitreten(context);
                },
                decoration: BoxDecoration(
                  color: Colors
                      .orange, // Ihre gewünschte orangefarbene Hintergrundfarbe
                  borderRadius: BorderRadius.circular(
                      20.0), // Optional: abgerundete Ecken
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
              Text("Hilfe", style: theme.textTheme.titleLarge)
            ])));
  }

  /// Navigates to the roomviewstudentScreen when the action is triggered.
  onTapBeitreten(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.roomviewstudentScreen);
  }

  /// Navigates to the mainmenuScreen when the action is triggered.
  onTapZurck(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenuScreen);
  }
}