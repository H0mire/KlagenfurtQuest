import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
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
                SizedBox(height: 4.v),
                Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 11.h,
                    vertical: 20.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
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
                        text: "Zur Map",
                        margin: EdgeInsets.only(left: 7.h),
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

  /// Section Widget
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
              "Es wurden nicht alle Fragen richtig beantwortet",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 29.v),
          CustomImageView(
            imagePath: ImageConstant.imgUser,
            height: 63.adaptSize,
            width: 63.adaptSize,
          ),
          SizedBox(height: 19.v),
        ],
      ),
    );
  }
}
