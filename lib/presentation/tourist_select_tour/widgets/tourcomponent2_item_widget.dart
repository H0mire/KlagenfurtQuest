import 'package:flutter/material.dart';
import 'package:klagenfurtquest_final/core/app_export.dart';
import 'package:klagenfurtquest_final/presentation/LanguageService.dart';
import 'package:klagenfurtquest_final/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Tourcomponent2ItemWidget extends StatelessWidget {
  Tourcomponent2ItemWidget({
    Key? key,
    this.onTapChooseButtonText,
  }) : super(
          key: key,
        );

  VoidCallback? onTapChooseButtonText;

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
            imagePath: ImageConstant.imgImgpreview131x131,
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
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "Altstadt-Tour",
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                ),
                SizedBox(
                  width: 172.h,
                  child: Text(
                    LanguageService.altstadtTourText(),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 7.v),
                CustomElevatedButton(
                  width: 188.h,
                  text: LanguageService.selectTourText(),
                  onPressed: () {
                    onTapChooseButtonText!.call();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
