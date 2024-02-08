import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/presentation/LanguageService.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class TeacherloggedinmenuScreen extends StatelessWidget {
  const TeacherloggedinmenuScreen({Key? key})
      : super(
          key: key,
        );

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
                            textAlign:
                                TextAlign.center, 
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildLoggedInMenu(context),
            ],
          ),
        ),
      ),
    );
  }

  //Widget zum Erstellen des Teacher-Menüs nach dem Einloggen
  Widget _buildLoggedInMenu(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 26.v,
        ),
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
            SizedBox(height: 12.v),
            Text(
              LanguageService.onlyWelcomeText(),
              style: CustomTextStyles.displaySmallBold,
            ),
            SizedBox(height: 33.v),
            CustomOutlinedButton(
                text: LanguageService.createRoomText(),
                margin: EdgeInsets.only(left: 8.h),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                onPressed: () {
                  onTapTeacherTourSelect(context);
                }),
            SizedBox(height: 17.v),
            CustomOutlinedButton(
                text: LanguageService.archiveText(),
                margin: EdgeInsets.only(left: 8.h),
                buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
                buttonTextStyle: theme.textTheme.displaySmall!,
                onPressed: () {
                  //Archiv deaktiviert
                  //onTapTeacherArchiv(context);
                }),
            SizedBox(height: 16.v),
            CustomOutlinedButton(
                text: LanguageService.loggoutText(),
                margin: EdgeInsets.only(left: 8.h),
                buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
                buttonTextStyle: theme.textTheme.displaySmall!,
                onPressed: () {
                  onTapZurck(context);
                }),
            SizedBox(height: 32.v),
            Text(
              LanguageService.helpText(),
              style: theme.textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }

  //Navigator zum Mainmenü
  onTapZurck(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenuScreen);
  }

//Navigator zum Auswählen der Tours für den Lehrer
  onTapTeacherTourSelect(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.teacherselecttourScreen);
  }

//Navigator zum Archiv - nicht implementiert
  onTapTeacherArchiv(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.teacherarchiveScreen);
  }
}
