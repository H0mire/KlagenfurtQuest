import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_elevated_button.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class SpielansichtStationQuizScreen extends StatelessWidget {
  const SpielansichtStationQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 17.v),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstant.imgGroup3),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 10.v),
                      Container(
                        margin: EdgeInsets.only(right: 1.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 13.h, vertical: 32.v),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          children: [
                            Text("Schiller Park",
                                style: CustomTextStyles.displaySmallBold),
                            SizedBox(height: 19.v),
                            Container(
                              margin: EdgeInsets.only(right: 9.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 11.h, vertical: 13.v),
                              decoration: AppDecoration.outlineBlack900
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 5.v),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      width: 253.h,
                                      margin: EdgeInsets.only(
                                          left: 6.h, right: 18.h),
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
                                    padding: EdgeInsets.only(
                                        left: 11.h, right: 16.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("A: 1935",
                                            style:
                                                theme.textTheme.headlineSmall),
                                        Text("B: 1899",
                                            style:
                                                theme.textTheme.headlineSmall),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 8.v),
                                  Padding(
                                    padding: EdgeInsets.only(left: 11.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 4.v, bottom: 3.v),
                                          child: Text("C: 2002",
                                              style: theme
                                                  .textTheme.headlineSmall),
                                        ),
                                        CustomOutlinedButton(
                                          height: 39.v,
                                          width: 117.h,
                                          text: "D: 1905",
                                          buttonStyle: CustomButtonStyles
                                              .outlinePrimaryTL19,
                                          buttonTextStyle:
                                              theme.textTheme.headlineSmall!,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 31.v),
                            CustomElevatedButton(
                              height: 44.v,
                              text: "Weiter",
                              margin: EdgeInsets.only(
                                  left: 36.h, right: 41.h, bottom: 57.v),
                              buttonStyle: CustomButtonStyles.outlineBlackTL20,
                              buttonTextStyle: CustomTextStyles
                                  .headlineLargeOnPrimaryContainer,
                              onPressed: () {
                                onTapWeiter(context);
                              },
                            ),
                          ],
                        ),
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

  onTapWeiter(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spielansichtQuizFinishedScreen);
  }
}
