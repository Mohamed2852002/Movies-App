import 'package:flutter/material.dart';
import 'package:movies_app/core/themes/app_colors.dart';

class AppTheme {
  static final appTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppColors.secondaryColor,
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
    ),
    scaffoldBackgroundColor: AppColors.primaryColor,
    fontFamily: 'Inter',
    brightness: Brightness.dark,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: const Color(0xff1A1A1A),
      indicatorColor: Colors.transparent,
      labelTextStyle: WidgetStateTextStyle.resolveWith(
        (states) {
          if (states.contains(WidgetState.selected)) {
            return const TextStyle(
              color: AppColors.secondaryColor,
            );
          } else {
            return const TextStyle(
              color: AppColors.navigationIconColor,
            );
          }
        },
      ),
      overlayColor: const WidgetStatePropertyAll(Colors.transparent),
    ),
  );
}
