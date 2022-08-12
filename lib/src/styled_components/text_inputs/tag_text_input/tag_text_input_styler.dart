import 'package:canton_ui/canton_ui.dart';

class TagTextInputStyler {
  /// The color of the decoration inside the textfield
  final Color? textFieldFilledColor;

  ///[textFieldFilled] If true the decoration's container is filled with [textFieldFilledColor].
  final bool textFieldFilled;

  ///The padding for the input decoration's container. Adjust this to using EdgeInsets if you make textFieldBorder [null] or borderless to have the right customized style
  final EdgeInsets? contentPadding;

  /// The text style of the text input
  final TextStyle? textStyle;

  ///The color of the cursor blinking
  final Color? cursorColor;

  ///Whether the input [child] is part of a dense form (i.e., uses less vertical space).
  final bool isDense;

  ///Text that provides context about the input [child]'s value, such as how the value will be used.
  final String? helperText;

  ///Style helperText
  final TextStyle? helperStyle;

  ///Text that suggests what sort of input the field accepts.
  final String? hintText;

  ///Styles hint text
  final TextStyle? hintStyle;

  ///Enable or disable the textfield
  final bool textFieldEnabled;

  final InputBorder textFieldBorder;
  final InputBorder? textFieldFocusedBorder;
  final InputBorder? textFieldDisabledBorder;
  final InputBorder? textFieldEnabledBorder;

  TagTextInputStyler({
    this.textFieldFilled = false,
    this.helperText,
    this.helperStyle,
    this.textStyle,
    this.cursorColor,
    this.hintText,
    this.hintStyle,
    this.contentPadding,
    this.textFieldFilledColor,
    this.isDense = true,
    this.textFieldEnabled = true,
    this.textFieldBorder = const OutlineInputBorder(),
    this.textFieldFocusedBorder,
    this.textFieldDisabledBorder,
    this.textFieldEnabledBorder,
  });
}
