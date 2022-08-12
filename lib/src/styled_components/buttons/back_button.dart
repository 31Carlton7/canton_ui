import '../../../canton_ui.dart';

/// isClear function will remove gray rectangle background
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
