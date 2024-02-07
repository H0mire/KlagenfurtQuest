import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/presentation/LanguageService.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class SpielansichtQuizGeschafftThreeScreen extends StatelessWidget {
  const SpielansichtQuizGeschafftThreeScreen({Key? key}) : super(key: key);

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
                  height: 240.v,
                  width: 300.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.h, vertical: 6.v),
                  decoration: AppDecoration.outlineBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgParty,
                        height: 75.v,
                        width: 65.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 45.h, bottom: 17.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgApplaus,
                        height: 75.v,
                        width: 65.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(right: 37.h, bottom: 17.v)),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            width: 233.h,
                            margin: EdgeInsets.only(top: 17.v),
                            child: Text(LanguageService.tourCompletedText(),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineSmall)))
                  ]))),
          SizedBox(height: 30.v),
          CustomOutlinedButton(
              height: 53.v,
              text: LanguageService.toResultsText(),
              margin: EdgeInsets.only(left: 7.h),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL201,
              buttonTextStyle: theme.textTheme.headlineMedium!,
              onPressed: () {
                onTapZuDenErgebnissen(context);
              })
        ]));
  }

  /// Navigates to the raumansichtSchuelerScreen when the action is triggered.
  onTapZuDenErgebnissen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.raumansichtSchuelerScreen);
  }
}
