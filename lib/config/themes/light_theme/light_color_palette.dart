import 'package:canton_ui/canton_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Essentially it's the github/primer color palette with a few modifications
/// that I'm creating here. It says CantonColors just to make it easier for me
/// to reference however all credit goes to the Primer Design System.

class CantonColors {
  static const MaterialColor gray = MaterialColor(
    0xFF24292e,
    <int, Color>{
      100: Color(0xFFfafbfc),
      200: Color(0xFFf6f8fa),
      300: Color(0xFFe1e4e8),
      400: Color(0xFFd1d5da),
      500: Color(0xFF959da5),
      600: Color(0xFF6a737d),
      700: Color(0xFF586069),
      800: Color(0xFF444d56),
      900: Color(0xFF2f363d),
      1000: Color(0xFF24292e),
    },
  );
  static const MaterialColor blue = MaterialColor(
    // My Favorite Color :)
    0xFF0366d6,
    <int, Color>{
      100: Color(0xFFf1f8ff),
      200: Color(0xFFdbedff),
      300: Color(0xFFc8e1ff),
      400: Color(0xFF79b8ff),
      500: Color(0xFF2188ff),
      600: Color(0xFF0366d6),
      700: Color(0xFF005cc5),
      800: Color(0xFF044289),
      900: Color(0xFF032f62),
      1000: Color(0xFF05264c),
    },
  );
  static const MaterialColor green = MaterialColor(
    0xFF28a745,
    <int, Color>{
      100: Color(0xFFf0fff4),
      200: Color(0xFFdcffe4),
      300: Color(0xFFbef5cb),
      400: Color(0xFF85e89d),
      500: Color(0xFF34d058),
      600: Color(0xFF28a745),
      700: Color(0xFF22863a),
      800: Color(0xFF176f2c),
      900: Color(0xFF165c26),
      1000: Color(0xFF144620),
    },
  );
  static const MaterialColor purple = MaterialColor(
    0xFF6f42c1,
    <int, Color>{
      100: Color(0xFFf5f0ff),
      200: Color(0xFFe6dcfd),
      300: Color(0xFFd1bcf9),
      400: Color(0xFFb392f0),
      500: Color(0xFF8a63d2),
      600: Color(0xFF6f42c1),
      700: Color(0xFF5a32a3),
      800: Color(0xFF4c2889),
      900: Color(0xFF3a1d6e),
      1000: Color(0xFF29134e),
    },
  );
  static const MaterialColor yellow = MaterialColor(
    0xFFffd33d,
    <int, Color>{
      100: Color(0xFFfffdef),
      200: Color(0xFFfffbdd),
      300: Color(0xFFfff5b1),
      400: Color(0xFFffea7f),
      500: Color(0xFFffdf5d),
      600: Color(0xFFffd33d),
      700: Color(0xFFf9c513),
      800: Color(0xFFdbab09),
      900: Color(0xFFb08800),
      1000: Color(0xFF735c0f),
    },
  );
  static const MaterialColor orange = MaterialColor(
    0xFFf66a0a,
    <int, Color>{
      100: Color(0xFFfff8f2),
      200: Color(0xFFffebda),
      300: Color(0xFFffd1ac),
      400: Color(0xFFffab70),
      500: Color(0xFFfb8532),
      600: Color(0xFFf66a0a),
      700: Color(0xFFe36209),
      800: Color(0xFFd15704),
      900: Color(0xFFc24e00),
      1000: Color(0xFFa04100),
    },
  );
  static const MaterialColor red = MaterialColor(
    0xFFd73a49,
    <int, Color>{
      100: Color(0xFFffeef0),
      200: Color(0xFFffeef0),
      300: Color(0xFFfdaeb7),
      400: Color(0xFFf97583),
      500: Color(0xFFea4a5a),
      600: Color(0xFFd73a49),
      700: Color(0xFFcb2431),
      800: Color(0xFFb31d28),
      900: Color(0xFF9e1c23),
      1000: Color(0xFF86181d),
    },
  );
  static const MaterialColor pink = MaterialColor(
    0xFFea4aaa,
    <int, Color>{
      100: Color(0xFFffeef8),
      200: Color(0xFFfedbf0),
      300: Color(0xFFf9b3dd),
      400: Color(0xFFf692ce),
      500: Color(0xFFec6cb9),
      600: Color(0xFFea4aaa),
      700: Color(0xFFd03592),
      800: Color(0xFFb93a86),
      900: Color(0xFF99306f),
      1000: Color(0xFF6d224f),
    },
  );

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00000000);

  /// Text Colors [Grays]
  static Color textPrimary = black;
  static Color? textSecondary = gray[700];
  static Color? textTertiary = gray[600];
  static Color? textPlaceholder = gray[600];
  static Color? textDisabled = gray[500];

  /// Text Colors [Other]
  static Color? textLink = blue[600];
  static Color? textDanger = red[700];
  static Color? textSuccess = green[700];
  static Color? textWarning = yellow[900];

  /// Icon Colors
  static Color iconPrimary = black;
  static Color? iconSecondary = gray[700];
  static Color? iconTertiary = gray[600];
  static Color? iconInfo = blue[600];
  static Color? iconDanger = red[600];
  static Color? iconSuccess = green[700];
  static Color? iconWarning = yellow[900];

  /// Border Colors
  static Color? borderPrimary = CupertinoColors.separator;
  static Color borderSecondary = const Color(0xFFeaecef);
  static Color? borderTertiary = gray[200];
  static Color? borderOverlay = gray[300];
  static Color borderInverse = white;
  static Color? borderInfo = blue[600];
  static Color? borderDanger = red[600];
  static Color? borderSuccess = green[500];
  static Color? borderWarning = yellow[700];

  /// Background Colors
  static Color bgCanvas = CupertinoColors.lightBackgroundGray;
  static Color bgCanvasMobile = CupertinoColors.lightBackgroundGray;
  static Color bgInverse = gray;
  static Color? bgInset = gray[200];
  static Color bgPrimary = CupertinoColors.systemBackground;
  static Color? bgSecondary = gray[100];
  static Color? bgTertiary = gray[200];
  static Color bgOverlay = CupertinoColors.systemBackground;
  static Color bgBackdrop = const Color.fromRGBO(27, 31, 35, 0.5);
  static Color bgInfo = const Color(0xFFf1f8ff);
  static Color? bgInfoInverse = blue[600];
  static Color bgDanger = const Color(0xFFffeef0);
  static Color? bgDangerInverse = red[600];
  static Color bgSuccess = const Color(0xFFdcffe4);
  static Color? bgSuccessInverse = green[600];
  static Color bgWarning = const Color(0xFFfff5b1);
  static Color? bgWarningInverse = yellow[500];

  static var colorScheme = ColorScheme.light(
    primary: black,
    primaryContainer: blue,
    onPrimary: blue,
    secondary: CupertinoColors.systemGrey6,
    secondaryContainer: CupertinoColors.secondaryLabel,
    background: green,
    surface: yellow,
    error: red[700]!,
    onSecondary: gray[200]!,
    onBackground: white,
    onSurface: yellow[100]!,
    onError: red[100]!,
  );
}
