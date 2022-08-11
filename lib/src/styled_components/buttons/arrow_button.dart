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

class CantonArrowButton extends StatelessWidget {
  const CantonArrowButton({Key? key, required this.view}) : super(key: key);

  final Widget view;

  @override
  Widget build(BuildContext context) {
    return CantonActionButton(
      padding: EdgeInsets.zero,
      alignment: MainAxisAlignment.end,
      icon: Icon(
        Iconsax.arrow_right_2,
        size: 20,
        color: Theme.of(context).primaryColor,
      ),
      onPressed: () {
        CantonMethods.viewTransition(context, view);
      },
    );
  }
}
