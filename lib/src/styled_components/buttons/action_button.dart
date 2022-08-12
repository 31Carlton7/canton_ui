import 'package:canton_ui/canton_ui.dart';

/// This used on headers and cards
class CantonActionButton extends StatelessWidget {
  final Widget icon;
  final Color? iconColor;
  final double? iconSize, containerWidth, containerHeight;
  final EdgeInsets? padding;
  final MainAxisAlignment? alignment;
  final void Function()? onPressed;

  const CantonActionButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.containerWidth,
    this.containerHeight,
    this.alignment,
    this.padding,
    this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CantonPrimaryButton(
      prefixIcon: icon,
      borderRadius: BorderRadius.zero,
      color: CantonColors.transparent,
      alignment: alignment ?? MainAxisAlignment.center,
      containerWidth: containerWidth ?? 40,
      containerHeight: containerHeight ?? 40,
      iconColor: iconColor ?? Theme.of(context).primaryColor,
      iconSize: iconSize ?? 21,
      padding: padding ?? const EdgeInsets.all(5),
      onPressed: onPressed,
    );
  }
}
