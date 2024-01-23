import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class TourcomponentItemWidget extends StatelessWidget {
  const TourcomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImgpreview,
            height: 131.adaptSize,
            width: 131.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              bottom: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Park-Tour",
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                Container(
                  width: 133.h,
                  margin: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "Datum: 07.08.2023\nUhrzeit: 15:01:20",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 25.v),
                CustomElevatedButton(
                  width: 188.h,
                  text: "Öffnen",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
