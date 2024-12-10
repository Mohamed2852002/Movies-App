import 'package:flutter/material.dart';
import 'package:movies_app/core/themes/app_colors.dart';
import '../styles/styles.dart';

class AppTheme {
  static final appTheme = ThemeData(
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.secondaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.4),
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.4),
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      hintStyle: Styles.textStyle16,
      fillColor: const Color(0xFF514F4F),
      filled: true,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: Styles.textStyle20,
    ),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: AppColors.secondaryColor,
      primary: AppColors.primaryColor,
      secondary: AppColors.secondaryColor,
      surface: AppColors.darkBackgroundColor,
      primaryContainer: AppColors.containerColor,
      onPrimary: AppColors.navigationIconColor,
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
