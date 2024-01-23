import '../teacherselecttour_screen/widgets/tourcomponent2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class TeacherselecttourScreen extends StatelessWidget {
  const TeacherselecttourScreen({Key? key}) : super(key: key);

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
                                    width: 259.h,
                                    margin: EdgeInsets.only(top: 22.v),
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
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.h, vertical: 11.v),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.customBorderTL25),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text("Raum erstellen",
                                style: CustomTextStyles.displaySmallSemiBold),
                            SizedBox(height: 5.v),
                            _buildTourComponent(context),
                            SizedBox(height: 23.v),
                            CustomOutlinedButton(
                                text: "Ausloggen",
                                margin: EdgeInsets.only(left: 7.h, right: 9.h),
                                onPressed: () {
                                  onTapAusloggen(context);
                                }),
                            SizedBox(height: 16.v),
                            Text("Hilfe", style: theme.textTheme.titleLarge),
                            SizedBox(height: 14.v)
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
              return Tourcomponent2ItemWidget(onTapCreateButtonText: () {
                onTapCreateButtonText(context);
              });
            }));
  }

  /// Navigates to the roomviewteacherScreen when the action is triggered.
  onTapCreateButtonText(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.roomviewteacherScreen);
  }

  /// Navigates to the mainmenuScreen when the action is triggered.
  onTapAusloggen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenuScreen);
  }
}
