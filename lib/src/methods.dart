import 'package:canton_ui/canton_ui.dart';

/// Functions to make development easier
class CantonMethods {
  /// Defocuses a textfield
  static void defocusTextfield(BuildContext context) =>
      FocusScope.of(context).requestFocus(FocusNode());

  /// Default transition for switching views
  static Future<void> viewTransition(BuildContext context, Widget view,
      {void Function()? onNavigateView}) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          if (onNavigateView != null) onNavigateView();
          return view;
        },
      ),
    );
  }

  /// Adds '...' to the end of a string
  static String addDotsToString(String string, int index) {
    List<String> wordList = string.split(' ');

    String result =
        '${wordList.sublist(0, index).join(' ').replaceAll(RegExp(r' '), ' ')}...';

    return result;
  }

  static String separateNumberByThreeDigits(
      {required int source, bool? commas}) {
    RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    String Function(Match) mathFunc;

    if ([null, false].contains(commas)) {
      mathFunc = (Match match) => '${match[1]} ';
    } else {
      mathFunc = (Match match) => '${match[1]},';
    }

    String result = source.toString().replaceAllMapped(reg, mathFunc);

    return result;
  }

  static String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

    return htmlText.replaceAll(exp, '');
  }

  static Color alternateCanvasColor(BuildContext context,
      {int? index, List<int?>? targetIndexes}) {
    if (![targetIndexes, index].contains(null)) {
      if (!targetIndexes!.contains(index)) return Theme.of(context).canvasColor;
    }

    if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
      return Theme.of(context).canvasColor;
    }
    return Theme.of(context).backgroundColor;
  }

  static Color alternateCanvasColorType2(BuildContext context,
      {int? index, List<int?>? targetIndexes}) {
    if (![targetIndexes, index].contains(null)) {
      if (!targetIndexes!.contains(index)) {
        return Theme.of(context).colorScheme.secondary;
      }
    }

    if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
      return Theme.of(context).colorScheme.secondary;
    }

    return Theme.of(context).backgroundColor;
  }

  static Color alternateCanvasColorType3(BuildContext context,
      {int? index, List<int?>? targetIndexes}) {
    if (![targetIndexes, index].contains(null)) {
      if (!targetIndexes!.contains(index)) {
        return Theme.of(context).colorScheme.onSecondary;
      }
    }

    if (MediaQuery.of(context).platformBrightness == Brightness.dark) {
      return Theme.of(context).colorScheme.onSecondary;
    }

    return Theme.of(context).cardColor;
  }
}
