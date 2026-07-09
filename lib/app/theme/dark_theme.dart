import 'package:flutter/material.dart';
import 'package:flutter_production_template/app/theme/app_text_styles.dart';

import 'app_colors.dart';

class DarkTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cairo',
    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColors.darkBackground,
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.bodyLarge.copyWith(color: AppColors.darkText),
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,

      secondary: AppColors.secondary,

      surface: AppColors.darkSurface,

      error: AppColors.error,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,

      elevation: 0,

      centerTitle: true,

      foregroundColor: Colors.white,
    ),

    cardTheme: CardThemeData(
      color: AppColors.darkSurface,

      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,

      fillColor: AppColors.darkSurface,

      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),

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
