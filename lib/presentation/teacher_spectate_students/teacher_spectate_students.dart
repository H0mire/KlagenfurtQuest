import 'package:klagenfurtquest_final/presentation/LanguageService.dart';

import 'package:klagenfurtquest_final/presentation/teacher_spectate_students/widgets/studentelementlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class MonitoringviewScreen extends StatelessWidget {
  const MonitoringviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 26.v),
                child: Column(children: [
                  SizedBox(height: 23.v),
                  Text(LanguageService.roomText() + ": 1234",
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
                  _buildStudentElementList(context),
                  SizedBox(height: 22.v),
                  CustomOutlinedButton(
                      text: LanguageService.quitText(),
                      margin: EdgeInsets.only(left: 8.h),
                      buttonStyle: CustomButtonStyles.outlinePrimaryTL201,
                      onPressed: () {
                        onTapBeenden(context);
                      }),
                  SizedBox(height: 11.v),
                  Text(LanguageService.helpText(),
                      style: theme.textTheme.titleLarge)
                ]))));
  }

  /// Section Widget
  Widget _buildStudentElementList(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
        decoration: AppDecoration.outlinePrimary3
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 11.v);
            },
            itemCount: 1,
            itemBuilder: (context, index) {
              return StudentelementlistItemWidget();
            }));
  }

  /// Navigates to the teacherselecttourScreen when the action is triggered.
  onTapBeenden(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.teacherselecttourScreen);
  }

  //Methode für den Icon-Button für die StudentLocation
  onTapViewStudentLocation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.teacherselecttourScreen);
  }
}
