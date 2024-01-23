import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class SpielansichtQuizGeschafftScreen extends StatelessWidget {
  const SpielansichtQuizGeschafftScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSpielansichtQuiz),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 5.v),
                          _buildSpielansichtQuiz(context)
                        ])))));
  }

  /// Section Widget
  Widget _buildSpielansichtQuiz(BuildContext context) {
    return Container(
        width: 335.h,
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 27.v),
        decoration:
            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 4.v),
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Container(
                  height: 217.v,
                  width: 300.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.h, vertical: 6.v),
                  decoration: AppDecoration.outlineBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 97.v,
                        width: 80.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 23.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 97.v,
                        width: 80.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 28.h)),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            width: 233.h,
                            margin: EdgeInsets.only(top: 17.v),
                            child: Text(
                                "Die Tour wurde beendet, herzlichen Glückwunsch!",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineSmall)))
                  ]))),
          SizedBox(height: 30.v),
          CustomOutlinedButton(
              height: 53.v,
              text: "Zum Menü",
              margin: EdgeInsets.only(left: 7.h),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL201,
              buttonTextStyle: theme.textTheme.headlineMedium!,
              onPressed: () {
                onTapZumMen(context);
              })
        ]));
  }

  /// Navigates to the mainmenuScreen when the action is triggered.
  onTapZumMen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainmenuScreen);
  }
}
