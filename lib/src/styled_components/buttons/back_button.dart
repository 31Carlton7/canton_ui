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

import '../../../canton_ui.dart';

class CantonBackButton extends StatelessWidget {
  final bool? isClear;
  final void Function()? onPressed;
  const CantonBackButton({Key? key, this.isClear, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CantonPrimaryButton(
      color: [null, false].contains(isClear)
          ? Theme.of(context).colorScheme.secondary
          : CantonColors.transparent,
      containerHeight: 60.0,
      containerWidth: 60.0,
      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      padding: EdgeInsets.zero,
      prefixIcon: Icon(
        Iconsax.arrow_left_3,
        color: [null, false].contains(isClear)
            ? Theme.of(context).colorScheme.secondaryContainer
            : Theme.of(context).primaryColor,
        size: 27,
      ),
      alignment: [null, false].contains(isClear)
          ? MainAxisAlignment.center
          : MainAxisAlignment.start,
      onPressed: onPressed ?? () => Navigator.of(context).pop(),
    );
  }
}
