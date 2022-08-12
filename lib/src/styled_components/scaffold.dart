import 'package:canton_ui/canton_ui.dart';

class CantonScaffold extends StatelessWidget {
  final Widget? body;
  final Widget? bottomNavBar;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset, safeArea;

  const CantonScaffold({
    Key? key,
    this.body,
    this.bottomNavBar,
    this.padding = const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.safeArea = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _body() {
      if (safeArea!) {
        return SafeArea(
          child: Padding(
            padding: padding ??
                const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: body,
          ),
        );
      } else {
        return Padding(
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: body,
        );
      }
    }

    return GestureDetector(
      onTap: () => CantonMethods.defocusTextfield(context),
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset ?? false,
        bottomNavigationBar: bottomNavBar,
        backgroundColor: backgroundColor,
        body: _body(),
      ),
    );
  }
}

class CantonScaffoldType2 extends StatelessWidget {
  final Widget? body;
  final Widget? bottomNavBar;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset, safeArea;

  const CantonScaffoldType2({
    Key? key,
    this.body,
    this.bottomNavBar,
    this.padding = const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.safeArea = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CantonMethods.defocusTextfield(context),
      child: SafeArea(
        child: Container(
          padding: padding ??
              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          color: backgroundColor ?? Theme.of(context).backgroundColor,
          child: body,
        ),
      ),
    );
  }
}
