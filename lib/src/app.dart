/*
Canton Design System
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
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
