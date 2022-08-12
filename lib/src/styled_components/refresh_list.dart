// ignore_for_file: use_key_in_widget_constructors

import 'package:canton_ui/canton_ui.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

/// Used in "Pull to refresh" situations
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
