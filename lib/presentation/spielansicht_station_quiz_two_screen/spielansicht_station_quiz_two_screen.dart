import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class SpielansichtStationQuizTwoScreen extends StatelessWidget {
  const SpielansichtStationQuizTwoScreen({Key? key})
      : super(
          key: key,
        );

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Hintergrund und durchlässiges Rechteck
              CustomImageView(
                imagePath: ImageConstant.imgGroup3,
                height: SizeUtils.height,
                width: double.maxFinite,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 17.v),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 10.v),
                        // Weißes Rechteck mit Inhalt
                        Container(
                          margin: EdgeInsets.only(right: 1.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.h, vertical: 30.v),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                            color: Colors.white.withOpacity(0.8),
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
                            children: [
                              SizedBox(height: 3.v),
                              Text(
                                "Schiller Park",
                                style: CustomTextStyles.displaySmallBold,
                              ),
                              SizedBox(height: 19.v),
                              // Erste Frage
                              _buildQuizQuestion(context),
                              SizedBox(height: 33.v),
                              // Zweite Frage
                              _buildSchillerParkQuestion(context),
                              SizedBox(height: 33.v),
                              // Weiter-Button
                              Container(
                                width: 231.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30.h,
                                  vertical: 1.v,
                                ),
                                decoration: AppDecoration.outlineBlack9004
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: TextButton(
                                  onPressed: () {
                                    onTapQuizGeschafft(context);
                                  },
                                  child: Text(
                                    "Weiter",
                                    style: CustomTextStyles
                                        .headlineLargeOnPrimaryContainer,
                                  ),
                                ),
                              ),
                              SizedBox(height: 33.v),
                              Container(
                                width: 231.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30.h,
                                  vertical: 1.v,
                                ),
                                decoration: AppDecoration.outlineBlack9004
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: TextButton(
                                  onPressed: () {
                                    onTapQuizFailed(context);
                                  },
                                  child: Text(
                                    "Falsch-Sc",
                                    style: CustomTextStyles
                                        .headlineLargeOnPrimaryContainer,
                                  ),
                                ),
                              ),
                              SizedBox(height: 33.v),
                              Container(
                                width: 231.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 30.h,
                                  vertical: 1.v,
                                ),
                                decoration: AppDecoration.outlineBlack9004
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20),
                                child: TextButton(
                                  onPressed: () {
                                    onTapQuizVollendet(context);
                                  },
                                  child: Text(
                                    "Finished",
                                    style: CustomTextStyles
                                        .headlineLargeOnPrimaryContainer,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.v),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildQuizQuestion(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 9.h),
      padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 13.v),
      decoration: AppDecoration.outlineBlack900
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 5.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 253.h,
              margin: EdgeInsets.only(left: 6.h, right: 18.h),
              child: Text(
                "Wann wurde der Schillerpark eröffnet?",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h, right: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("A: 1935", style: theme.textTheme.headlineSmall),
                Text("B: 1899", style: theme.textTheme.headlineSmall),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 4.v, bottom: 3.v),
                  child: Text("C: 2002", style: theme.textTheme.headlineSmall),
                ),
                CustomOutlinedButton(
                  height: 39.v,
                  width: 117.h,
                  text: "D: 1905",
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL19,
                  buttonTextStyle: theme.textTheme.headlineSmall!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSchillerParkQuestion(BuildContext context) {
    return SizedBox(
        height: 600.v,
        width: 301.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(right: 1.h),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 5.v),
              decoration: AppDecoration.outlineBlack900
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: Container(
                width: 252.h,
                margin: EdgeInsets.only(right: 23.h),
                child: Text(
                  "Neben dem Marmordenkmal ziert welches weitere Andenken den Park?",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 1.h, bottom: 13.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 300.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.outlinePrimary3.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20),
                    child: Text(
                      "A: Schillereiche",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text(
                      "B: Schillerstatue",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text(
                      "C: Schillerbrunnen",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text(
                      "D: Schillerbank",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ],
              ),
            ),
          )
        ]));
  }

  onTapQuizGeschafft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spielansichtQuizFinishedScreen);
  }

  onTapQuizFailed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.quizFailedScreen);
  }

  onTapQuizVollendet(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spielansichtQuizGeschafftScreen);
  }
}
