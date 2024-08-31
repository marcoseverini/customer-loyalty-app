part of 'app_theme.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextStyle display({Color? color}) => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 42.0,
        color: color,
      );

  static TextStyle header({Color? color}) => TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 34.0,
        color: color,
      );

  static TextStyle title1({Color? color}) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 28.0,
        color: color,
      );

  static TextStyle title2({Color? color}) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
        color: color,
      );

  static TextStyle headline({Color? color}) => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20.0,
        color: color,
      );

  static TextStyle body({Color? color}) => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        color: color,
      );

  static TextStyle bodyBold({Color? color}) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        color: color,
      );

  static TextStyle caption({Color? color}) => TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        color: color,
      );

  static TextStyle captionBold({Color? color}) => TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        color: color,
      );
}
