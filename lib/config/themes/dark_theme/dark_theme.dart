import 'package:canton_ui/canton_ui.dart';

ThemeData cantonDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    splashColor: CantonDarkColors.transparent,
    highlightColor: Colors.transparent,
    textTheme: MobileTextTheme.theme(base),
    brightness: Brightness.dark,
    dividerTheme: DividerThemeData(
      space: 0,
      thickness: 0.5,
      color: CantonDarkColors.borderPrimary!,
    ),
    iconTheme: IconThemeData(
      color: CantonDarkColors.iconPrimary,
      size: 24.0,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: CantonDarkColors.bgPrimary,
      contentTextStyle: TextStyle(
        color: CantonDarkColors.textPrimary,
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
      fillColor: const Color(0xFF2D2D2F),
      hoverColor: CantonDarkColors.gray[400],
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
        color: CantonDarkColors.textPrimary,
        height: 1.5,
      ),
      hintStyle: TextStyle(
        fontSize: 15.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
        color: CantonDarkColors.textSecondary,
        height: 1.5,
      ),
      labelStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: CantonDarkColors.textPrimary,
        height: 1.5,
      ),
      prefixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: CantonDarkColors.colorScheme.secondaryContainer,
        height: 1.5,
      ),
      suffixStyle: TextStyle(
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
        color: CantonDarkColors.colorScheme.secondaryContainer,
        height: 1.5,
      ),
    ),
    colorScheme: CantonDarkColors.colorScheme,
    cardTheme: CardTheme(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      ),
      elevation: 0.0,
      color: CantonDarkColors.colorScheme.secondary,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: CantonDarkColors.bgPrimary,
      modalBackgroundColor: CantonDarkColors.bgPrimary,
      modalElevation: 0.5,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(kLargeBorderRadius),
        ),
      ),
    ),
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: CantonDarkColors.blue),
    appBarTheme: AppBarTheme(
      color: CantonColors.transparent,
      foregroundColor: CantonColors.transparent,
      titleTextStyle: MobileTextTheme.theme(base).headline4,
      toolbarTextStyle: MobileTextTheme.theme(base).headline5,
      elevation: 0.0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: CantonDarkColors.colorScheme.secondaryContainer,
      selectedItemColor: base.primaryColor,
      selectedLabelStyle: MobileTextTheme.theme(base)
          .bodyText2
          ?.copyWith(fontWeight: FontWeight.w500),
      unselectedLabelStyle: MobileTextTheme.theme(base)
          .bodyText2
          ?.copyWith(fontWeight: FontWeight.w500),
      backgroundColor: CantonDarkColors.bgCanvasMobile,
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: CantonDarkColors.blue,
    errorColor: CantonDarkColors.bgDangerInverse,
    canvasColor: CantonDarkColors.bgCanvasMobile,
    backgroundColor: CantonDarkColors.bgPrimary,
    scaffoldBackgroundColor: CantonDarkColors.bgCanvasMobile,
    dividerColor: CantonDarkColors.borderPrimary!,
  );
}
