import 'package:canton_ui/canton_ui.dart';

class DesktopTextTheme {
  static const double kH00 = 48.0;
  static const double kH0 = 40.0;
  static const double kH1 = 32.0;
  static const double kH2 = 24.0;
  static const double kH3 = 20.0;
  static const double kH4 = 16.0;
  static const double kH5 = 14.0;
  static const double kH6 = 12.0;

  static TextTheme theme(ThemeData base) {
    return base.textTheme.copyWith(
      headline1: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w800,
        fontSize: kH00,
        height: kLineHeight,
        color: lightDarkModeDefaultTextColor(base),
      ),
      headline2: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w800,
        fontSize: kH0,
        height: kLineHeight,
        color: lightDarkModeDefaultTextColor(base),
      ),
      headline3: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w800,
        fontSize: kH1,
        height: kLineHeight,
        color: lightDarkModeDefaultTextColor(base),
      ),
      headline4: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w600,
        fontSize: kH2,
        height: kLineHeight,
        color: lightDarkModeDefaultTextColor(base),
      ),
      headline5: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: kH3,
        height: kLineHeightTwo,
        color: lightDarkModeDefaultTextColor(base),
      ),
      headline6: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: kH4,
        height: kLineHeightTwo,
        color: lightDarkModeDefaultTextColor(base),
      ),
      bodyText1: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w400,
        fontSize: kH5,
        height: kLineHeightTwo,
        color: lightDarkModeDefaultTextColor(base),
      ),
      bodyText2: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w400,
        fontSize: kH6,
        height: kLineHeightTwo,
        color: lightDarkModeDefaultTextColor(base),
      ),
      button: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 17.0,
        height: kLineHeightTwo,
        color: lightDarkModeDefaultTextColor(base),
      ),
      caption: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        height: kLineHeightTwo,
        color: lightDarkModeDefaultTextColor(base),
      ),
      overline: TextStyle(
        fontFamily: kFontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 10.0,
        height: kLineHeightTwo,
        color: lightDarkModeDefaultTextColor(base),
      ),
    );
  }
}
