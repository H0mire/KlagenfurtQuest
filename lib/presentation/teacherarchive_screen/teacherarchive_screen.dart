import 'package:klagenfurtquest_final/presentation/LanguageService.dart';

import '../teacherarchive_screen/widgets/tourcomponent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class TeacherarchiveScreen extends StatelessWidget {
  const TeacherarchiveScreen({Key? key}) : super(key: key);

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
                                decoration: AppDecoration.outlineBlack,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: LanguageService.welcomeMessage(),
                                        style: CustomTextStyles
                                            .displaySmallffffa500,
                                      ),
                                      TextSpan(
                                        text: "\nKlagenfurtQuest",
                                        style: CustomTextStyles
                                            .displaySmallffffffff,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign
                                      .center,
                                ),
                              ),
                            ),
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.h, vertical: 10.v),
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
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text(LanguageService.archiveText(),
                                style: CustomTextStyles.displaySmallSemiBold),
                            SizedBox(height: 6.v),
                            _buildTourComponent(context),
                            SizedBox(height: 23.v),
                            CustomOutlinedButton(
                                text: LanguageService.loggoutText(),
                                margin: EdgeInsets.only(left: 7.h, right: 9.h),
                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                onPressed: () {
                                  onTapAusloggen(context);
                                }),
                            SizedBox(height: 16.v),
                            Text(LanguageService.helpText(),
                                style: theme.textTheme.titleLarge),
                            SizedBox(height: 15.v)
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildTourComponent(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 13.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return TourcomponentItemWidget();
            }));
  }

  /// Navigates to the mainmenuScreen when the action is triggered.
  onTapAusloggen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenuScreen);
  }

//für Button zum Aufrufen der Ergebnislisten archivierter Tours
  onTapTourArchived(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenuScreen);
  }
}
