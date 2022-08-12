import 'package:canton_ui/canton_ui.dart';

/// Default Spinner
// ignore: use_key_in_widget_constructors
class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitChasingDots(
        size: 40,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
