import 'package:canton_ui/canton_ui.dart';

/// Has the capability of addings 1, 2 or no buttons
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
