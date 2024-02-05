import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class SpielansichtStationQuizOneScreen extends StatelessWidget {
  const SpielansichtStationQuizOneScreen({Key? key}) : super(key: key);

  @override
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
  String selectedAnswer = ""; // Variable, um die ausgewählte Antwort zu verfolgen

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
        // Radio-Buttons für Antwortmöglichkeiten
        _buildRadioOption("A: 1935", selectedAnswer, "A", (value) {
          selectedAnswer = value;
        }),
        _buildRadioOption("B: 1899", selectedAnswer, "B", (value) {
          selectedAnswer = value;
        }),
        _buildRadioOption("C: 2002", selectedAnswer, "C", (value) {
          selectedAnswer = value;
        }),
        _buildRadioOption("D: 1905", selectedAnswer, "D", (value) {
          selectedAnswer = value;
        }),
      ],
    ),
  );
}

/// Helper Widget für Radio-Buttons
Widget _buildRadioOption(
    String label, String selectedAnswer, String option, void Function(String) onChanged) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Radio<String>(
        value: option,
        groupValue: selectedAnswer,
        onChanged: (String? value) {
          onChanged(value!);
        },
      ),
      Text(label, style: theme.textTheme.headlineSmall),
    ],
  );
}

/// Section Widget
Widget _buildSchillerParkQuestion(BuildContext context) {
  String selectedAnswer = ""; // Variable, um die ausgewählte Antwort zu verfolgen

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
              "Neben dem Marmordenkmal ziert welches weitere Andenken den Park?",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineSmall,
            ),
          ),
        ),
        SizedBox(height: 17.v),
        // Radio-Buttons für Antwortmöglichkeiten
        _buildRadioOption("A: Schillereiche", selectedAnswer, "A", (value) {
          selectedAnswer = value;
        }),
        _buildRadioOption("B: Schillerstatue", selectedAnswer, "B", (value) {
          selectedAnswer = value;
        }),
        _buildRadioOption("C: Schillerbrunnen", selectedAnswer, "C", (value) {
          selectedAnswer = value;
        }),
        _buildRadioOption("D: Schillerbank", selectedAnswer, "D", (value) {
          selectedAnswer = value;
        }),
      ],
    ),
  );
}

  onTapQuizGeschafft(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spielansichtQuizBeendetScreen);
  }

  onTapQuizFailed(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spielansichtQuizFailedScreen);
  }

  onTapQuizVollendet(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.spielansichtQuizGeschafftThreeScreen);
  }
}
