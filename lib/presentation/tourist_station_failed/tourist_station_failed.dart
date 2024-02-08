import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/presentation/LanguageService.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class QuizFailedScreen extends StatelessWidget {
  const QuizFailedScreen({Key? key})
      : super(
          key: key,
        );

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
              image: AssetImage(
                ImageConstant.imgSpielansichtQuiz,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50.v),
                Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding: EdgeInsets.fromLTRB(11.h, 2.v, 11.h, 20.v),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      Text(
                        "Schiller Park",
                        style: CustomTextStyles.displaySmallBold,
                      ),
                      SizedBox(height: 26.v),
                      _buildComponentResult(context),
                      SizedBox(height: 20.v),
                      CustomOutlinedButton(
                        height: 53.v,
                        text: LanguageService.backToQuizText(),
                        margin: EdgeInsets.only(left: 7.h),
                        onPressed: () {
                          onTapStarten(context);
                        },
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL201,
                        buttonTextStyle: theme.textTheme.headlineMedium!,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //Widget zum Erstellen des Inhaltes
  Widget _buildComponentResult(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 236.h,
            child: Text(
              LanguageService.notAnsweredCorrectlyText(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 29.v),
          CustomImageView(
            imagePath: ImageConstant.imgFailed,
            height: 63.adaptSize,
            width: 63.adaptSize,
          ),
          SizedBox(height: 19.v),
        ],
      ),
    );
  }

  //Navigator zu den Infos der Station des Touristen
  onTapStarten(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spielansichtStationInfosOneScreen);
  }
}
