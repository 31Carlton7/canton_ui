// ignore_for_file: use_key_in_widget_constructors

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
