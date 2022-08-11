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
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class RefreshList extends StatelessWidget {
  final Widget? child;
  final Future<void> Function()? onRefresh;
  final Color? color, backgroundColor;

  const RefreshList(
      {this.child, this.onRefresh, this.color, this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return LiquidPullToRefresh(
      color: color ?? Theme.of(context).canvasColor,
      backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
      showChildOpacityTransition: false,
      onRefresh: () => onRefresh!(),
      child: child!,
    );
  }
}
