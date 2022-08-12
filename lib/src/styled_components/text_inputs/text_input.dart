import 'package:canton_ui/canton_ui.dart';
import 'package:flutter/services.dart';

class CantonTextInput extends StatelessWidget {
  final TextInputType? textInputType;
  final String? hintText, labelText;
  final Widget? prefixIcon, suffixIcon;
  final FocusNode? focusNode;
  final bool? obscureText, isTextFormField;
  final InputDecoration? inputDecoration;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final double? containerWidth;
  final int? maxLines;
  final EdgeInsets? containerPadding;
  final BorderRadius? radius;
  final BorderSide? border;
  final Color? containerColor;
  final List<TextInputFormatter>? formatters;

  // ignore: use_key_in_widget_constructors
  const CantonTextInput({
    this.textInputType,
    this.containerColor,
    this.hintText,
    this.isTextFormField,
    this.labelText,
    this.prefixIcon,
    this.maxLines,
    this.inputDecoration,
    this.border,
    this.radius,
    this.suffixIcon,
    this.focusNode,
    this.onChanged,
    this.obscureText,
    this.controller,
    this.containerWidth,
    this.containerPadding,
    this.formatters,
  });

  CantonTextInput copyWith({
    TextInputType? textInputType,
    String? hintText,
    String? labelText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    FocusNode? focusNode,
    bool? obscureText,
    bool? isTextFormField,
    InputDecoration? inputDecoration,
    TextEditingController? controller,
    ValueChanged<String>? onChanged,
    double? containerWidth,
    int? maxLines,
    EdgeInsets? containerPadding,
    BorderRadius? radius,
    BorderSide? border,
    Color? containerColor,
    List<TextInputFormatter>? formatters,
  }) {
    return CantonTextInput(
      obscureText: obscureText ?? this.obscureText,
      controller: controller ?? this.controller,
      onChanged: onChanged ?? this.onChanged,
      focusNode: focusNode ?? this.focusNode,
      maxLines: maxLines ?? this.maxLines,
      inputDecoration: inputDecoration ?? this.inputDecoration,
      containerPadding: containerPadding ?? this.containerPadding,
      containerColor: containerColor ?? this.containerColor,
      prefixIcon: prefixIcon ?? this.prefixIcon,
      suffixIcon: suffixIcon ?? this.suffixIcon,
      isTextFormField: isTextFormField ?? this.isTextFormField,
      labelText: labelText ?? this.labelText,
      textInputType: textInputType ?? this.textInputType,
      hintText: hintText ?? this.hintText,
      containerWidth: containerWidth ?? this.containerWidth,
      radius: radius ?? this.radius,
      border: border ?? this.border,
      formatters: formatters ?? this.formatters,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Color fillColor() {
      if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
        return const Color(0xFF2D2D2F);
      }
      return Theme.of(context).colorScheme.secondary;
    }

    Widget _labelTextWidget() {
      if (labelText != null) {
        return Column(
          children: [
            Text(
              labelText!,
              style: Theme.of(context).inputDecorationTheme.labelStyle,
            ),
            const SizedBox(height: 7.0),
          ],
        );
      } else {
        return Container();
      }
    }

    Widget? _prefixIconWidget() {
      if (prefixIcon != null) {
        return Padding(
          padding: containerPadding ?? const EdgeInsets.all(15),
          child: prefixIcon,
        );
      } else {
        return null;
      }
    }

    Widget? _suffixIconWidget() {
      if (suffixIcon != null) {
        return Padding(
          padding: containerPadding ?? const EdgeInsets.all(15),
          child: suffixIcon,
        );
      } else {
        return null;
      }
    }

    Widget _textInputFormField() {
      return TextFormField(
        obscureText: obscureText!,
        controller: controller,
        onChanged: onChanged,
        focusNode: focusNode,
        maxLines: maxLines ?? 1,
        cursorColor: Theme.of(context).primaryColor,
        inputFormatters: formatters ?? [],
        decoration: inputDecoration ??
            InputDecoration(
              /// To change height of Text Field, add contentPadding,
              /// Use EdgeInsets.all,
              /// and change it from 23 to something else.
              /// 23 for height 65, 18 for height 50.
              contentPadding: containerPadding ?? const EdgeInsets.all(15),
              hintText: hintText,
              prefixIcon: _prefixIconWidget(),
              suffixIcon: _suffixIconWidget(),
              fillColor: containerColor ?? fillColor(),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    radius ?? BorderRadius.circular(kSmallBorderRadius),
                borderSide: border ?? BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    radius ?? BorderRadius.circular(kSmallBorderRadius),
                borderSide: border ?? BorderSide.none,
              ),
              errorBorder: OutlineInputBorder(
                borderRadius:
                    radius ?? BorderRadius.circular(kSmallBorderRadius),
                borderSide: border ?? BorderSide.none,
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius:
                    radius ?? BorderRadius.circular(kSmallBorderRadius),
                borderSide: border ?? BorderSide.none,
              ),
            ),
      );
    }

    Widget _textInputField() {
      return TextField(
        obscureText: false,
        onChanged: onChanged,
        maxLines: maxLines ?? 1,
        focusNode: focusNode,
        cursorColor: Theme.of(context).primaryColor,
        inputFormatters: formatters ?? [],
        decoration: inputDecoration ??
            InputDecoration(
              /// To change height of Text Field, add contentPadding,
              /// Use EdgeInsets.all,
              /// and change it from 23 to something else.
              /// 23 for height 65, 18 for height 50.
              contentPadding: containerPadding ?? const EdgeInsets.all(15),
              hintText: hintText,
              prefixIcon: _prefixIconWidget(),
              suffixIcon: _suffixIconWidget(),
              fillColor: containerColor ?? fillColor(),
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    radius ?? BorderRadius.circular(kSmallBorderRadius),
                borderSide: border ?? BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    radius ?? BorderRadius.circular(kSmallBorderRadius),
                borderSide: border ?? BorderSide.none,
              ),
              errorBorder: OutlineInputBorder(
                borderRadius:
                    radius ?? BorderRadius.circular(kSmallBorderRadius),
                borderSide: border ?? BorderSide.none,
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius:
                    radius ?? BorderRadius.circular(kSmallBorderRadius),
                borderSide: border ?? BorderSide.none,
              ),
            ),
      );
    }

    Widget textInput() {
      if (isTextFormField!) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: _textInputFormField(),
        );
      } else {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: _textInputField(),
        );
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelTextWidget(),
        SizedBox(
          width: containerWidth ?? size.width,
          child: textInput(),
        ),
      ],
    );
  }
}
