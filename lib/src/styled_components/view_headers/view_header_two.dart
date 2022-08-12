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

class ViewHeaderTwo extends StatelessWidget {
  final String? title;
  final bool? backButton;
  final bool? isBackButtonClear;
  final Widget? buttonOne;
  final Widget? buttonTwo;
  final Color? textColor;
  final void Function()? backButtonFunction;
  // ignore: use_key_in_widget_constructors
  const ViewHeaderTwo(
      {this.title,
      this.backButton,
      this.isBackButtonClear,
      this.buttonOne,
      this.buttonTwo,
      this.textColor,
      this.backButtonFunction});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ![null, false].contains(backButton)
            ? CantonBackButton(
                isClear: isBackButtonClear ?? true,
                onPressed: () {
                  backButtonFunction != null
                      ? backButtonFunction!()
                      : DoNothingAction();
                  Navigator.pop(context);
                },
              )
            : buttonOne ?? const CantonNullButton(),
        Text(
          title!,
          style: Theme.of(context).textTheme.headline5!.copyWith(
              color: textColor ?? Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w600),
        ),
        buttonTwo ?? const CantonNullButton()
      ],
    );
  }
}
