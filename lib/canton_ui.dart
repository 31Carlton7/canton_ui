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

library canton_ui;

/// Exports for all packages and internal package files

// Packages
export 'package:flutter/material.dart';
export 'package:flutter_feather_icons/flutter_feather_icons.dart';
export 'package:page_transition/page_transition.dart';
export 'package:flutter_spinkit/flutter_spinkit.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'package:iconsax/iconsax.dart';
export 'package:figma_squircle/figma_squircle.dart';

// Config
export 'config/themes/light_theme/light_theme.dart';
export 'config/themes/light_theme/light_color_palette.dart';
export 'config/themes/dark_theme/dark_color_palette.dart';
export 'config/themes/dark_theme/dark_theme.dart';
export 'config/themes/text_themes/desktop_text_theme.dart';
export 'config/themes/text_themes/mobile_text_theme.dart';
export 'config/providers/theme_provider.dart';
export 'config/constants.dart';

// Models
export 'models/models.dart';

// Src
export 'src/styled_components/styled_components.dart';
export 'src/methods.dart';
export 'src/app.dart';
export 'src/responsive.dart';
