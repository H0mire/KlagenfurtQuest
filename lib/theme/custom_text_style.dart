import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displaySmallBold => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get displaySmallGray500 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.gray500,
      );
  static get displaySmallOnPrimaryContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get displaySmallOnPrimaryContainer_1 =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get displaySmallSemiBold => theme.textTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get displaySmallff000000 => theme.textTheme.displaySmall!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w700,
      );
  static get displaySmallffffa500 => theme.textTheme.displaySmall!.copyWith(
        color: Color(0XFFFFA500),
        fontWeight: FontWeight.w700,
      );
  static get displaySmallffffffff => theme.textTheme.displaySmall!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineLargeOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 30.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumBlack900 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.black900,
      );
  // Title text style
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
