import 'package:canton_ui/canton_ui.dart';
import 'package:flutter/cupertino.dart';

ThemeData cantonLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: MobileTextTheme.theme(base),
    primaryIconTheme: IconThemeData(size: 24, color: CantonColors.iconPrimary),
    brightness: Brightness.light,
    dividerTheme: DividerThemeData(
      space: 0,
      thickness: 0.5,
      color: CantonColors.borderPrimary!,
    ),
    iconTheme: IconThemeData(
      color: CantonColors.iconPrimary,
      size: 24.0,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: CantonColors.bgPrimary,
      contentTextStyle: TextStyle(
        color: CantonColors.textPrimary,
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        letterSpacing: 0.0,
        height: 1.5,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // 23 for height 65, 18 for height 50
      contentPadding: const EdgeInsets.all(15),
      filled: true,
      isCollapsed: true,
      fillColor: CupertinoColors.systemGrey6,
      hoverColor: CantonColors.gray[400],
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kSmallBorderRadius),
        borderSide: const BorderSide(
          color: CantonColors.transparent,
          width: 1.5,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kSmallBorderRadius),
        borderSide: const BorderSide(
          color: CantonColors.transparent,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kSmallBorderRadius),
        borderSide: const BorderSide(
          color: CantonColors.transparent,
          width: 1.5,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(kSmallBorderRadius),
        borderSide: const BorderSide(
          color: CantonColors.transparent,
          width: 1.5,
        ),
      ),
      helperStyle: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        color: CantonColors.textPrimary,
        height: 1.5,
      ),
      hintStyle: TextStyle(
        fontSize: 15.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
        color: CantonColors.textSecondary,
        height: 1.5,
      ),
      labelStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: CantonColors.textPrimary,
        height: 1.5,
      ),
      prefixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: CantonColors.colorScheme.secondaryContainer,
        height: 1.5,
      ),
      suffixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: CantonColors.colorScheme.secondaryContainer,
        height: 1.5,
      ),
    ),
    cardTheme: CardTheme(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      ),
      elevation: 0.0,
      color: CantonColors.bgPrimary,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: CantonColors.bgPrimary,
      modalBackgroundColor: CantonColors.bgPrimary,
      modalElevation: 0.5,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(kLargeBorderRadius),
        ),
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: CantonColors.blue,
    ),
    appBarTheme: AppBarTheme(
      color: CantonColors.transparent,
      foregroundColor: CantonColors.transparent,
      titleTextStyle: MobileTextTheme.theme(base).headline4,
      toolbarTextStyle: MobileTextTheme.theme(base).headline5,
      elevation: 0.0,
    ),
    colorScheme: CantonColors.colorScheme,
    primaryColor: CantonColors.blue,
    errorColor: CantonColors.bgDangerInverse,
    canvasColor: CantonColors.bgCanvasMobile,
    splashColor: CantonColors.transparent,
    highlightColor: CantonColors.transparent,
    backgroundColor: CantonColors.bgPrimary,
    scaffoldBackgroundColor: CantonColors.bgCanvas,
    dividerColor: CantonColors.borderPrimary!,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: CantonDarkColors.colorScheme.secondaryContainer,
      selectedItemColor: base.primaryColor,
      selectedLabelStyle: MobileTextTheme.theme(base)
          .bodyText2
          ?.copyWith(fontWeight: FontWeight.w500),
      unselectedLabelStyle: MobileTextTheme.theme(base)
          .bodyText2
          ?.copyWith(fontWeight: FontWeight.w500),
      backgroundColor: CantonColors.bgPrimary,
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
  );
}
