import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/presentation/monitoringview_screen/widgets/studentelementlist_item_widget.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';
import 'package:klagenfurtquest_final/presentation/selectedLanguage.dart';
import 'package:klagenfurtquest_final/presentation/languageService.dart';

class MainmenulanguageconfigScreen extends StatelessWidget {
  const MainmenulanguageconfigScreen({Key? key}) : super(key: key);

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
                                      .center, // Zentriert den gesamten Text
                                ),
                              ),
                            ),
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.h, vertical: 26.v),
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
                            SizedBox(height: 9.v),
                            _buildLanguageSubMenu(context),
                            SizedBox(height: 16.v),
                            CustomOutlinedButton(
                                text: LanguageService.teacherText(),
                                margin: EdgeInsets.only(left: 8.h),
                                buttonStyle:
                                    CustomButtonStyles.outlinePrimaryTL20,
                                buttonTextStyle: theme.textTheme.displaySmall!),
                            SizedBox(height: 31.v),
                            Text(LanguageService.helpText(),
                                style: theme.textTheme.titleLarge)
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildLanguageSubMenu(BuildContext context) {
    return SizedBox(
        height: 237.v,
        width: 332.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 6.v),
                  child: Text(LanguageService.youAreText(),
                      style: CustomTextStyles.displaySmallBold))),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 100.h, vertical: 9.v),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text("Tourist",
                            style: CustomTextStyles
                                .displaySmallOnPrimaryContainer_1)
                      ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 95.h, vertical: 10.v),
                  decoration: AppDecoration.outlinePrimary1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Text(LanguageService.studentText(),
                      style: theme.textTheme.displaySmall))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 18.h, right: 14.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.h, vertical: 35.v),
                  decoration: AppDecoration.outlinePrimary2.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder25),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgflaggedeutsch,
                                height: 60.adaptSize,
                                width: 60.adaptSize,
                              ),
                              GestureDetector(
                                onTap: () {
                                  onTapTxtLbGerman(context);
                                  selectedLanguage = 'Deutsch';
                                },
                                child: Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(5.h, 9.v, 5.h, 6.v),
                                  child: Container(
                                    alignment: Alignment(
                                        -0.5, 0.0), // Baseline-Ausrichtung
                                    child: Text(
                                      LanguageService.germanText(),
                                      style: CustomTextStyles.displaySmallBold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 29.v),
                        Padding(
                          padding: EdgeInsets.only(right: 33.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgflaggeenglish,
                                height: 60.adaptSize,
                                width: 60.adaptSize,
                              ),
                              GestureDetector(
                                onTap: () {
                                  onTapTxtLbEnglish(context);
                                  selectedLanguage = 'English';
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 40.h, top: 12.v, bottom: 3.v),
                                  child: Container(
                                    alignment: Alignment(
                                        -0.5, 0.0), // Baseline-Ausrichtung
                                    child: Text(
                                      'English',
                                      style: CustomTextStyles.displaySmallBold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ])))
        ]));
  }

  /// Navigates to the mainmenuScreen when the action is triggered.
  onTapTxtLbGerman(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenuScreen);
  }

  /// Navigates to the mainmenuScreen when the action is triggered.
  onTapTxtLbEnglish(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenuScreen);
  }
}
