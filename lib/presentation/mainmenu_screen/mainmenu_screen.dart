import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_icon_button.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';
import 'package:klagenfurtquest_final/presentation/selectedLanguage.dart';
import 'package:klagenfurtquest_final/presentation/languageService.dart';

class MainmenuScreen extends StatelessWidget {
  const MainmenuScreen({Key? key}) : super(key: key);

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
                          width: 280.h,
                          margin: EdgeInsets.only(top: 22.v),
                          decoration: AppDecoration.outlineBlack,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: LanguageService.welcomeMessage(),
                                  style: CustomTextStyles.displaySmallffffa500,
                                ),
                                TextSpan(
                                  text: "\nKlagenfurtQuest",
                                  style: CustomTextStyles.displaySmallffffffff,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildMenu(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenu(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 26.v),
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
          children: [
            SizedBox(height: 9.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 6.v, bottom: 4.v),
                    child: Text(LanguageService.youAreText(),
                        style: CustomTextStyles.displaySmallBold),
                  ),
                  if (selectedLanguage == 'Deutsch')
                    CustomIconButton(
                      height: 55.v,
                      width: 73.h,
                      padding: EdgeInsets.all(12.h),
                      onTap: () {
                        onTapBtnBtnLanguages(context);
                      },
                      child: CustomImageView(
                        imagePath: ImageConstant.imgflaggedeutsch,
                      ),
                    ),
                  if (selectedLanguage == 'English')
                    CustomIconButton(
                      height: 55.v,
                      width: 73.h,
                      padding: EdgeInsets.all(9.h),
                      onTap: () {
                        onTapBtnBtnLanguages(context);
                      },
                      child: CustomImageView(
                        imagePath: ImageConstant.imgflaggeenglish,
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 25.v),
            CustomOutlinedButton(
              text: "Tourist",
              margin: EdgeInsets.only(left: 8.h),
              buttonTextStyle: theme.textTheme.displaySmall!,
              onPressed: () {
                onTapTourist(context);
              },
              decoration: BoxDecoration(
                color: Colors
                    .orange, // Ihre gewünschte orangefarbene Hintergrundfarbe
                borderRadius:
                    BorderRadius.circular(20.0), // Optional: abgerundete Ecken
              ),
            ),
            SizedBox(height: 17.v),
            CustomOutlinedButton(
              text: LanguageService.studentText(),
              margin: EdgeInsets.only(left: 8.h),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
              buttonTextStyle: theme.textTheme.displaySmall!,
              onPressed: () {
                onTapSchler(context);
              },
            ),
            SizedBox(height: 16.v),
            CustomOutlinedButton(
              text: LanguageService.teacherText(),
              margin: EdgeInsets.only(left: 8.h),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
              buttonTextStyle: theme.textTheme.displaySmall!,
              onPressed: () {
                onTapLehrer(context);
              },
            ),
            SizedBox(height: 31.v),
            Text(LanguageService.helpText(), style: theme.textTheme.titleLarge),
          ],
        ),
      ),
    );
  }

  onTapBtnBtnLanguages(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenulanguageconfigScreen);
  }

  onTapTourist(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.touristmenuScreen);
  }

  onTapSchler(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.studentmenuScreen);
  }

  onTapLehrer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.teachermenuScreen);
  }
}
