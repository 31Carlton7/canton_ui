/*
Canton UI
Copyright (C) 2022  Carlton Aikins

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

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
