import 'package:canton_ui/canton_ui.dart';
import 'package:flutter/services.dart';

class CantonTagTextInput extends StatefulWidget {
  ///[tagsStyler] must not be [null]
  final TagsStyler? tagsStyler;

  ///[textFieldStyler] must not be [null]
  final TagTextInputStyler? textFieldStyler;

  ///[onTag] must not be [null] and should be implemented
  final void Function(String tag)? onTag;

  ///[onDelete] must not be [null]
  final void Function(String tag)? onDelete;

  ///[initialTags] are optional initial tags you can enter
  final List<String>? initialTags;

  ///Padding for the scrollable
  final EdgeInsets scrollableTagsPadding;

  ///Margin for the scrollable
  final EdgeInsets? scrollableTagsMargin;

  ///[tagsDistanceFromBorder] sets the distance of the tags from the border
  final double tagsDistanceFromBorderEnd;

  ///The maximum amount of padding in the text field
  final int? maxCharactersPerTag;

  ///Maximum amount of tags in text field
  final int? maxTags;

  final TextEditingController? controller;

  const CantonTagTextInput(
      {Key? key,
      this.tagsDistanceFromBorderEnd = 0.725,
      this.scrollableTagsPadding = const EdgeInsets.symmetric(horizontal: 4.0),
      this.scrollableTagsMargin,
      this.tagsStyler,
      this.textFieldStyler,
      this.onTag,
      this.onDelete,
      this.initialTags,
      this.maxCharactersPerTag,
      this.controller,
      required this.maxTags})
      : super(key: key);

  @override
  CantonTagTextInputState createState() => CantonTagTextInputState();
}

class CantonTagTextInputState extends State<CantonTagTextInput> {
  List<String>? _tagsStringContents = [];
  final TextEditingController _textEditingController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _showPrefixIcon = false;
  late double _deviceWidth;

  // _textEditingController = widget.controller ?? TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.initialTags != null && widget.initialTags!.isNotEmpty) {
      _showPrefixIcon = true;
      _tagsStringContents = widget.initialTags;
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _deviceWidth = MediaQuery.of(context).size.width;
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
    _scrollController.dispose();
  }

  List<TextInputFormatter> _textInputFormatters() {
    if (widget.maxCharactersPerTag != null) {
      return [
        LengthLimitingTextInputFormatter(widget.maxCharactersPerTag),
      ];
    } else {
      return [];
    }
  }

  List<Widget> get _getTags {
    List<Widget> tags = [];
    for (var i = 0; i < _tagsStringContents!.length; i++) {
      final String stringContent = _tagsStringContents![i];
      final String stringContentWithHash =
          widget.tagsStyler!.showHashtag ? "#$stringContent" : stringContent;
      final Container tag = Container(
        padding: widget.tagsStyler!.tagPadding,
        decoration: widget.tagsStyler!.tagDecoration,
        margin: widget.tagsStyler!.tagMargin,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: widget.tagsStyler!.tagTextPadding,
              child: Text(
                stringContentWithHash,
                style: widget.tagsStyler!.tagTextStyle,
              ),
            ),
            Padding(
              padding: widget.tagsStyler!.tagCancelIconPadding,
              child: GestureDetector(
                onTap: () {
                  widget.onDelete!(stringContent);
                  if (_tagsStringContents!.length == 1 && _showPrefixIcon) {
                    setState(() {
                      _tagsStringContents!.remove(stringContent);
                      _showPrefixIcon = false;
                    });
                  } else {
                    setState(() {
                      _tagsStringContents!.remove(stringContent);
                    });
                  }
                },
                child: widget.tagsStyler!.tagCancelIcon,
              ),
            ),
          ],
        ),
      );

      tags.add(tag);
    }
    return tags;
  }

  void _animateTransition() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      autocorrect: false,
      cursorColor: widget.textFieldStyler!.cursorColor,
      style: widget.textFieldStyler!.textStyle,
      inputFormatters: _textInputFormatters(),
      decoration: InputDecoration(
        contentPadding:
            widget.textFieldStyler!.contentPadding ?? const EdgeInsets.all(20),
        isDense: widget.textFieldStyler!.isDense,
        helperText: widget.textFieldStyler!.helperText,
        helperStyle: widget.textFieldStyler!.helperStyle,
        hintText: !_showPrefixIcon ? widget.textFieldStyler!.hintText : null,
        hintStyle: !_showPrefixIcon ? widget.textFieldStyler!.hintStyle : null,
        filled: widget.textFieldStyler!.textFieldFilled,
        fillColor: widget.textFieldStyler!.textFieldFilledColor ??
            Theme.of(context).inputDecorationTheme.fillColor,
        enabled: widget.textFieldStyler!.textFieldEnabled,
        border: widget.textFieldStyler!.textFieldBorder,
        focusedBorder: widget.textFieldStyler!.textFieldFocusedBorder,
        disabledBorder: widget.textFieldStyler!.textFieldDisabledBorder,
        enabledBorder: widget.textFieldStyler!.textFieldEnabledBorder,
        prefixIcon: _showPrefixIcon
            ? ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: _deviceWidth * widget.tagsDistanceFromBorderEnd),
                child: Container(
                  margin: widget.scrollableTagsMargin,
                  padding: widget.scrollableTagsPadding,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _getTags,
                    ),
                  ),
                ),
              )
            : null,
      ),
      onSubmitted: (value) {
        final String val = value.trim().toLowerCase();
        if (value.isNotEmpty) {
          _textEditingController.clear();
          if (widget.maxTags! > _tagsStringContents!.length &&
              !_tagsStringContents!.contains(val)) {
            widget.onTag!(val);
            if (!_showPrefixIcon) {
              setState(() {
                _tagsStringContents!.add(val);
                _showPrefixIcon = true;
              });
            } else {
              setState(() {
                _tagsStringContents!.add(val);
              });
            }
            _animateTransition();
          }
        }
      },
      onChanged: (value) {
        final List<String> splitedTagsList = value.split(" ");
        final int indexer = splitedTagsList.length > 1
            ? splitedTagsList.length - 2
            : splitedTagsList.length - 1;
        final String lastLastTag =
            splitedTagsList[indexer].trim().toLowerCase();

        if (value.contains(" ")) {
          if (lastLastTag.isNotEmpty) {
            _textEditingController.clear();

            if (!_tagsStringContents!.contains(lastLastTag) &&
                widget.maxTags! > _tagsStringContents!.length) {
              widget.onTag!(lastLastTag);

              if (!_showPrefixIcon) {
                setState(() {
                  _tagsStringContents!.add(lastLastTag);
                  _showPrefixIcon = true;
                });
              } else {
                setState(() {
                  _tagsStringContents!.add(lastLastTag);
                });
              }
              _animateTransition();
            }
          }
        }
      },
    );
  }
}
