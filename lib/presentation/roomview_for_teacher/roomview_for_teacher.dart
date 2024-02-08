import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/presentation/LanguageService.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';
import 'package:klagenfurtquest_final/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RoomviewteacherScreen extends StatelessWidget {
  RoomviewteacherScreen({Key? key}) : super(key: key);

  TextEditingController maxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 26.v),
                child: Column(children: [
                  SizedBox(height: 23.v),
                  Text(LanguageService.roomText() + " :1234",
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.displaySmallBold),
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Tour: Altstadt",
                              style: theme.textTheme.headlineSmall))),
                  SizedBox(height: 11.v),
                  Container(
                      margin: EdgeInsets.only(left: 8.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.h, vertical: 16.v),
                      decoration: AppDecoration.outlinePrimary3.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        //Liste mit fiktiven Spielern - wurde nicht vollständig implementiert
                        _buildStudentElementWithCheck(context,
                            userName: "Lena Müller"),
                        SizedBox(height: 11.v),
                        _buildStudentElementWithCheck(context,
                            userName: "Berta Strohmeier"),
                        SizedBox(height: 11.v),
                        _buildStudentElementWithCheck(context,
                            userName: "Peter Linder"),
                        SizedBox(height: 11.v),
                        _buildStudentElementWithCheck(context,
                            userName: "Max Murnig"),
                        SizedBox(height: 11.v),
                        _buildStudentElementWithCheck(context,
                            userName: "Cynthia Lob"),
                        SizedBox(height: 11.v),
                        _buildStudentElementWithCheck(context,
                            userName: "Ken Yuki"),
                        SizedBox(height: 11.v)
                      ])),
                  SizedBox(height: 22.v),
                  CustomOutlinedButton(
                    text: LanguageService.startGameText(),
                    margin: EdgeInsets.only(left: 8.h),
                    onPressed: () {
                      onTapSpielStarten(context);
                    },
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Text(LanguageService.helpText(),
                      style: theme.textTheme.titleLarge)
                ]))));
  }

  //Widget zum Erstellen der gejointen Schüler für Liste
  Widget _buildStudentElementWithCheck(
    BuildContext context, {
    required String userName,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 4.h, top: 5.v, bottom: 4.v),
                  child: Text(userName,
                      style: theme.textTheme.titleLarge!
                          .copyWith(color: appTheme.black900))),
              CustomImageView(
                  imagePath: ImageConstant.imgDone,
                  height: 31.v,
                  width: 35.h,
                  margin: EdgeInsets.only(bottom: 4.v))
            ]));
  }

  //Navigator zum Spectatescreen für Lehrer - wurde nicht implementiert
  onTapSpielStarten(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.monitoringviewScreen);
  }
}
