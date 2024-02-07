import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/presentation/LanguageService.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';
import 'package:klagenfurtquest_final/presentation/schillerpark_station_completion.dart';

class SpielansichtStationQuizOneScreen extends StatefulWidget {
  const SpielansichtStationQuizOneScreen({Key? key}) : super(key: key);

  @override
  _SpielansichtStationQuizOneScreenState createState() =>
      _SpielansichtStationQuizOneScreenState();
}

class _SpielansichtStationQuizOneScreenState
    extends State<SpielansichtStationQuizOneScreen> {
  String? selectedAnswerQuestion1 = "";
  String? selectedAnswerQuestion2 = "";

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
                                    checkAnswersAndNavigate(context);
                                  },
                                  child: Text(
                                    LanguageService.continueText(),
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
                LanguageService.firstQuestionText(),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(height: 17.v),
          // Radio-Buttons für Antwortmöglichkeiten
          _buildRadioOption("A: 1935", selectedAnswerQuestion1, "A", (value) {
            setState(() {
              selectedAnswerQuestion1 = value;
            });
          }),
          _buildRadioOption("B: 1899", selectedAnswerQuestion1, "B", (value) {
            setState(() {
              selectedAnswerQuestion1 = value;
            });
          }),
          _buildRadioOption("C: 2002", selectedAnswerQuestion1, "C", (value) {
            setState(() {
              selectedAnswerQuestion1 = value;
            });
          }),
          _buildRadioOption("D: 1905", selectedAnswerQuestion1, "D", (value) {
            setState(() {
              selectedAnswerQuestion1 = value;
            });
          }),
        ],
      ),
    );
  }

  /// Helper Widget für Radio-Buttons
  Widget _buildRadioOption(String label, String? selectedAnswer, String option,
      void Function(String?)? onChanged) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0), // Hier den Abstand einstellen
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Radio<String?>(
            value: option,
            groupValue: selectedAnswer ?? "", // Umwandlung in String
            onChanged: onChanged,
          ),
          Expanded(
            child: Text(label, style: theme.textTheme.headlineSmall),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSchillerParkQuestion(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 9.h),
      padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 13.v),
      decoration: AppDecoration.outlineBlack900
          .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.v),
          Container(
            width: 253.h,
            margin: EdgeInsets.only(left: 6.h, right: 18.h),
            child: Text(
              LanguageService.secondQuestionText(),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 17.v),
          // Radio-Buttons für Antwortmöglichkeiten
          _buildRadioOption(
            LanguageService.secondQuestionFirstAnswerText(),
            selectedAnswerQuestion2,
            "A",
            (value) {
              setState(() {
                selectedAnswerQuestion2 = value;
              });
            },
          ),
          _buildRadioOption(
            LanguageService.secondQuestionSecondAnswerText(),
            selectedAnswerQuestion2,
            "B",
            (value) {
              setState(() {
                selectedAnswerQuestion2 = value;
              });
            },
          ),
          _buildRadioOption(
            LanguageService.secondQuestionThirdAnswerText(),
            selectedAnswerQuestion2,
            "C",
            (value) {
              setState(() {
                selectedAnswerQuestion2 = value;
              });
            },
          ),
          _buildRadioOption(
            LanguageService.secondQuestionFourthAnswerText(),
            selectedAnswerQuestion2,
            "D",
            (value) {
              setState(() {
                selectedAnswerQuestion2 = value;
              });
            },
          ),
        ],
      ),
    );
  }

  void checkAnswersAndNavigate(BuildContext context) {
    if (selectedAnswerQuestion1 == "D" && selectedAnswerQuestion2 == "A") {
      onTapQuizGeschafft(context);
      print('Geschafft');
      isSchillerparkStationCompleted = true;
      print(isSchillerparkStationCompleted);
    } else {
      onTapQuizFailed(context);
      print('Failed');
      print(selectedAnswerQuestion1);
      print(selectedAnswerQuestion2);
      print(isSchillerparkStationCompleted);
    }
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
