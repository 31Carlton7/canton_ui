import 'package:canton_ui/canton_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Consumer widget with MaterialApp built in that implements
/// themes and other components
class CantonApp extends StatelessWidget {
  final String? title;
  final Widget? home;
  final Color? primaryLightColor;
  final Color? primaryDarkColor;
  final Color primaryLightVariantColor;
  final Color primaryDarkVariantColor;
  final List<NavigatorObserver>? navigatorObservers;
  final Widget Function(BuildContext, Widget?)? builder;
  final ThemeData? lightTheme, darkTheme;

  const CantonApp({
    Key? key,
    required this.title,
    required this.home,
    required this.primaryLightColor,
    required this.primaryDarkColor,
    this.primaryLightVariantColor = CantonColors.blue,
    this.primaryDarkVariantColor = CantonDarkColors.blue,
    this.navigatorObservers,
    this.builder,
    this.lightTheme,
    this.darkTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final repo = ref.watch(themeProvider);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title!,
          themeMode: repo.themeMode,
          navigatorObservers: navigatorObservers ?? [],
          theme: lightTheme ??
              cantonLightTheme().copyWith(
                primaryColor: primaryLightColor,
                colorScheme: cantonLightTheme()
                    .colorScheme
                    .copyWith(primaryContainer: primaryLightVariantColor),
              ),
          darkTheme: darkTheme ??
              cantonDarkTheme().copyWith(
                primaryColor: primaryDarkColor,
                colorScheme: cantonDarkTheme()
                    .colorScheme
                    .copyWith(primaryContainer: primaryDarkVariantColor),
              ),
          home: home,
          builder: builder,
        );
      },
    );
  }
}
