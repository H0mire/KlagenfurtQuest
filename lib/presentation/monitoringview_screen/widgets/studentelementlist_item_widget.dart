import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';

// ignore: must_be_immutable
class StudentelementlistItemWidget extends StatelessWidget {
  const StudentelementlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "Lena Müller",
              style: theme.textTheme.titleLarge,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgBtnmessage,
            height: 29.adaptSize,
            width: 29.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBtnlocate,
            height: 29.adaptSize,
            width: 29.adaptSize,
            margin: EdgeInsets.only(left: 3.h),
          ),
        ],
      ),
    );
  }
}
