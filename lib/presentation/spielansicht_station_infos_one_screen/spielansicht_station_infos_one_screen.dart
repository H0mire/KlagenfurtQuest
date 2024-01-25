import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class SpielansichtStationInfosOneScreen extends StatelessWidget {
  const SpielansichtStationInfosOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImgquizbg,
                      height: 800.v,
                      width: 355.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment(0, 0.2),
                      child: SingleChildScrollView(
                          child: Container(
                              constraints: BoxConstraints(
                                maxWidth: 332.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25.h, vertical: 43.v),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL25,
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
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Schiller Park",
                                        style:
                                            CustomTextStyles.displaySmallBold),
                                    SizedBox(height: 14.v),
                                    Container(
                                        width: 297.h,
                                        margin: EdgeInsets.only(
                                            left: 5.h, right: 7.h),
                                        child: Text(
                                            "Der Schillerpark, eröffnet im Jahr 1905, entstand anlässlich des hundertsten Todestags des Dichters Friedrich Schillers. Ursprünglich als Stadtpark geplant, wurde er auf einem Teil des zugeschütteten Klagenfurters Stadtgrabens angelegt.\n\nBereits im Eröffnungsjahr wurde die “Schillereiche” gepflanzt und seit 1928 ziert ein Marmordenkmal den Park.",
                                            maxLines: 20,
                                            overflow: TextOverflow.visible,
                                            style:
                                                theme.textTheme.headlineSmall)),
                                    SizedBox(height: 85.v),
                                    CustomOutlinedButton(
                                        height: 53.v,
                                        text: "Zum Quiz",
                                        buttonStyle: CustomButtonStyles
                                            .outlinePrimaryTL201,
                                        buttonTextStyle:
                                            theme.textTheme.headlineMedium!,
                                        onPressed: () {
                                          onTapZumQuiz(context);
                                        }),
                                    SizedBox(height: 4.v)
                                  ]))))
                ]))));
  }

  /// Navigates to the spielansichtStationQuizTwoScreen when the action is triggered.
  onTapZumQuiz(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spielansichtStationQuizTwoScreen);
  }
}
