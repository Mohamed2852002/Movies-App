import 'package:flutter/material.dart';
import 'package:movies_app/core/themes/app_colors.dart';

class AppTheme {
  static final appTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.secondaryColor,
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
    ),
    scaffoldBackgroundColor: AppColors.primaryColor,
    fontFamily: 'Inter',
    brightness: Brightness.dark,
  );
}
