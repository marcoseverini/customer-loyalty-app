part of 'app_theme.dart';

abstract class AppColors {
  static const Color white = Color(0xffffffff);

  static const Color black = Color(0xff000000);

  static const Color fucsia = Color(0xffFF00E5);

  static const Color redPrimary = Color(0xffDE251A);

  static const Color bluePrimary = Color(0xff1D63AE);

  static const Color greenPrimary = Color(0xff43B12E);

  static const Color yellowPrimary = Color(0xffFFC836);

  static const Color blackPrimary = Color(0xff4B5058);

  static const Color redSecondary = Color(0xffFFF3F2);

  static const Color blueSecondary = Color(0xffE5F2FF);

  static const Color greenSecondary = Color(0xffEAFFE5);

  static const Color yellowSecondary = Color(0xffFFF8E5);

  static const Color blackSecondary = Color(0xffE6EBF2);

  static const Color redAccent = Color(0xffF7B91D);

  static const Color blueAccent = Color(0xff21C7AE);

  static const Color greenAccent = Color(0xffB1C934);

  static const Color yellowAccent = Color(0xffFF6536);

  static const Color grey7 = Color(0xff313131);

  static const Color grey6 = Color(0xff616161);

  static const Color grey5 = Color(0xff919191);

  static const Color grey4 = Color(0xffC2C2C2);

  static const Color grey3 = Color(0xffE4E4E4);

  static const Color grey2 = Color(0xffECECEC);

  static const Color grey1 = Color(0xffF5F5F7);
}

abstract class ThemeColors {
  static ThemeColors of(BuildContext context) {
    return _ThemeColors.instance;
  }

  Color get background;

  Color get primary;

  Color get primaryDark;

  Color get primaryLight;

  Color get textColor;
}

class _ThemeColors extends ThemeColors {
  static final _instance = _ThemeColors._internal();

  static _ThemeColors get instance => _instance;

  _ThemeColors._internal();

  @override
  final Color background = const Color(0xFFFFFFFF);
  @override
  final Color textColor = const Color(0xFF000000);
  @override
  final Color primaryDark = const Color(0xFF959595);
  @override
  final Color primaryLight = const Color(0xFFEAEAEA);
  @override
  final Color primary = const Color(0xFFBFBFBF);
}
