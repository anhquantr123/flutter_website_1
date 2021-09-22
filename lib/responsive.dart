import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive(
      {Key? key,
      required this.mobile,
      required this.tablet,
      required this.desktop})
      : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 850 &&
      MediaQuery.of(context).size.width <= 1200;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1200;

  @override
  Widget build(BuildContext context) {
    final double _size = MediaQuery.of(context).size.width;
    if (_size > 1200) {
      return desktop;
    } else if (_size >= 850 && _size <= 1200) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
