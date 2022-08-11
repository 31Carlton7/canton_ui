// ignore_for_file: use_key_in_widget_constructors

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

class CantonNullButton extends StatelessWidget {
  const CantonNullButton();

  @override
  Widget build(BuildContext context) {
    return CantonHeaderButton(
      backgroundColor: CantonColors.transparent,
      icon: Container(),
    );
  }
}
