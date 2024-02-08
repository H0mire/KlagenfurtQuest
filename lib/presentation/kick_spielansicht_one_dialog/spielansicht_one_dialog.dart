import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SpielansichtOneDialog extends StatelessWidget {
  const SpielansichtOneDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 302.h,
      padding: EdgeInsets.all(18.h),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgMegaphone,
        height: 24.v,
        width: 28.h,
      ),
    );
  }
}
