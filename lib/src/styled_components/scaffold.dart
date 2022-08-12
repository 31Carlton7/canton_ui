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

class CantonScaffold extends StatelessWidget {
  final Widget? body;
  final Widget? bottomNavBar;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset, safeArea;

  const CantonScaffold({
    Key? key,
    this.body,
    this.bottomNavBar,
    this.padding = const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.safeArea = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget _body() {
      if (safeArea!) {
        return SafeArea(
          child: Padding(
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: body,
          ),
        );
      } else {
        return Padding(
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: body,
        );
      }
    }

    return GestureDetector(
      onTap: () => CantonMethods.defocusTextfield(context),
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? false,
        bottomNavigationBar: bottomNavBar,
        backgroundColor: backgroundColor,
        body: _body(),
      ),
    );
  }
}

class CantonScaffoldType2 extends StatelessWidget {
  final Widget? body;
  final Widget? bottomNavBar;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset, safeArea;

  const CantonScaffoldType2({
    Key? key,
    this.body,
    this.bottomNavBar,
    this.padding = const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.safeArea = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CantonMethods.defocusTextfield(context),
      child: SafeArea(
        child: Container(
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          color: backgroundColor ?? Theme.of(context).backgroundColor,
          child: body,
        ),
      ),
    );
  }
}
