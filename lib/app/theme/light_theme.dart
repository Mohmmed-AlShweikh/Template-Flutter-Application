import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class LightTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cairo',
    brightness: Brightness.light,

    scaffoldBackgroundColor: AppColors.lightBackground,

    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,

      secondary: AppColors.secondary,

      surface: AppColors.lightSurface,

      error: AppColors.error,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,

      elevation: 0,

      centerTitle: true,

      foregroundColor: AppColors.lightText,
    ),

    cardTheme: CardThemeData(
      color: AppColors.lightSurface,

      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),

    textTheme: TextTheme(
      headlineLarge: AppTextStyles.headlineLarge,

      headlineMedium: AppTextStyles.headlineMedium,
      bodyLarge: AppTextStyles.bodyLarge.copyWith(color: AppColors.lightText),
      titleLarge: AppTextStyles.titleLarge,

      bodyMedium: AppTextStyles.bodyMedium,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,

      fillColor: Colors.white,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),

        borderSide: BorderSide.none,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,

        foregroundColor: Colors.white,

        minimumSize: const Size(double.infinity, 52),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );
}
