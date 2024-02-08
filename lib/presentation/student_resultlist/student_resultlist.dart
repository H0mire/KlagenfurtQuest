import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/presentation/LanguageService.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class RaumansichtSchuelerScreen extends StatelessWidget {
  const RaumansichtSchuelerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 26.v),
                child: Column(children: [
                  SizedBox(height: 27.v),
                  Text(LanguageService.resultListText(),
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.displaySmallBold),
                  SizedBox(height: 43.v),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.h, vertical: 16.v),
                      decoration: AppDecoration.outlinePrimary5.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        _buildStudentElementRow1(context),
                        SizedBox(height: 10.v),
                        _buildStudentElementRow2(context,
                            name: "Berta Strohmeier", time: "25m17s"),
                        SizedBox(height: 10.v),
                        _buildStudentElementRow2(context,
                            name: "Peter Linder", time: "35m32s"),
                        SizedBox(height: 10.v),
                        _buildStudentElementRow2(context,
                            name: "Max Murnig", time: "57m14s"),
                        SizedBox(height: 10.v),
                        _buildStudentElementRow2(context,
                            name: "Cynthia Lob", time: "129m01s"),
                        SizedBox(height: 8.v),
                        _buildStudentElementRow2(context,
                            name: "Ken Yuki", time: "180m01s"),
                        SizedBox(height: 8.v)
                      ])),
                  SizedBox(height: 31.v),
                  CustomOutlinedButton(
                    text: LanguageService.backToMenuText(),
                    buttonTextStyle: theme.textTheme.displaySmall!,
                    onPressed: () {
                      onTapZumMen(context);
                    },
                    decoration: BoxDecoration(
                      color: Colors
                          .orange, // Ihre gewünschte orangefarbene Hintergrundfarbe
                      borderRadius: BorderRadius.circular(
                          20.0), // Optional: abgerundete Ecken
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Text(LanguageService.helpText(),
                      style: theme.textTheme.titleLarge)
                ]))));
  }

  /// Section Widget
  Widget _buildStudentElementRow1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 6.v),
        decoration: AppDecoration.outlineBlack9001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgPokal,
                  height: 31.v,
                  width: 25.h,
                  margin: EdgeInsets.only(left: 3.h, top: 5.v)),
              Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 5.v, bottom: 4.v),
                  child:
                      Text("Lena Müller", style: theme.textTheme.titleLarge)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 2.v, bottom: 8.v),
                  child: Text("5m01s", style: theme.textTheme.titleLarge))
            ]));
  }

  /// Common widget
  Widget _buildStudentElementRow2(
    BuildContext context, {
    required String name,
    required String time,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 11.v),
      decoration: BoxDecoration(
        color: Color.fromARGB(
            255, 223, 221, 221), // Hintergrundfarbe auf hellgrau ändern
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Text(
              name,
              style: theme.textTheme.titleLarge!
                  .copyWith(color: appTheme.black900),
            ),
          ),
          Text(
            time,
            style:
                theme.textTheme.titleLarge!.copyWith(color: appTheme.black900),
          ),
        ],
      ),
    );
  }

  /// Navigates to the mainmenuScreen when the action is triggered.
  onTapZumMen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenuScreen);
  }
}
