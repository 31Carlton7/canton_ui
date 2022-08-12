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

class CantonHeaderButton extends StatelessWidget {
  const CantonHeaderButton({
    Key? key,
    this.backgroundColor,
    this.icon,
    this.onPressed,
    this.radius,
    this.size,
    this.isClear,
  }) : super(key: key);
  final void Function()? onPressed;
  final Widget? icon;
  final Color? backgroundColor;
  final BorderRadius? radius;
  final double? size;
  final bool? isClear;

  @override
  Widget build(BuildContext context) {
    return CantonPrimaryButton(
      color: [false].contains(isClear)
          ? Theme.of(context).colorScheme.secondary
          : backgroundColor ?? CantonColors.transparent,
      containerHeight: size ?? 55.0,
      containerWidth: size ?? 55.0,
      borderRadius: radius ?? BorderRadius.circular(kDefaultBorderRadius),
      padding: const EdgeInsets.all(0),
      prefixIcon: icon,
      alignment: [null, false].contains(isClear)
          ? MainAxisAlignment.center
          : MainAxisAlignment.end,
      onPressed: onPressed ?? () {},
    );
  }
}
