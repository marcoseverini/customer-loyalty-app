import 'package:flutter/material.dart';

part 'app_colors.dart';

part 'app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get theme {
    ThemeColors themeColors = _ThemeColors.instance;
    return ThemeData(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: themeColors.primary,
        onPrimary: AppColors.white,
        secondary: themeColors.primaryDark,
        onSecondary: AppColors.white,
        error: AppColors.redPrimary,
        onError: AppColors.white,
        background: themeColors.background,
        onBackground: AppColors.black,
        surface: AppColors.white,
        onSurface: AppColors.white,
      ),
    );
  }
}
