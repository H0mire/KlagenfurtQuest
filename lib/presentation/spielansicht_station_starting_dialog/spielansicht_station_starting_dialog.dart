import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_outlined_button.dart';

class SpielansichtStationStartingDialog extends StatelessWidget {
  const SpielansichtStationStartingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 332.h,
        padding: EdgeInsets.fromLTRB(12.h, 290.v, 12.h, 16.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
              width: 208.h,
              child: Text("Willkommen bei der Station!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineMediumBlack900)),
          SizedBox(height: 13.v),
          CustomOutlinedButton(
              height: 53.v,
              text: "Starten",
              buttonStyle: CustomButtonStyles.outlinePrimaryTL201,
              buttonTextStyle: theme.textTheme.headlineMedium!,
              onPressed: () {
                onTapStarten(context);
              }),
          SizedBox(height: 5.v)
        ]));
  }

  /// Navigates to the spielansichtStationInfosOneScreen when the action is triggered.
  onTapStarten(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.spielansichtStationInfosOneScreen);
  }
}
