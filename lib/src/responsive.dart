import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget? desktop;

  const Responsive(
      {Key? key, required this.mobile, required this.tablet, this.desktop})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (desktop != null && constraints.maxWidth >= 1100) {
          return desktop!;
        } else if (constraints.maxWidth >= 650) {
          return tablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
