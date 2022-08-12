import 'package:canton_ui/canton_ui.dart';

const kFontFamily = 'Inter';

const kLineHeight = 1.25;

const kLineHeightTwo = 1.5;

const kDefaultPadding = 17.0;

const kMediumPadding = 12.0;

const kSmallPadding = 10.0;

const kDefaultBorderRadius = 10.0;

const kSmallBorderRadius = 7.0;

const kLargeBorderRadius = 17.0;

bool isDarkMode(BuildContext context) {
  if (Theme.of(context).colorScheme == CantonDarkColors.colorScheme) {
    return true;
  } else {
    return false;
  }
}

Color? lightDarkModeDefaultTextColor(ThemeData themeData) {
  if (themeData.brightness == Brightness.dark) {
    return CantonColors.white;
  } else {
    return CantonColors.black;
  }
}
