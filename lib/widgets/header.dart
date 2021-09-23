import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_website_1/constants/constants.dart';
import 'package:flutter_website_1/responsive.dart';

class HeaderNavigation extends StatefulWidget {
  HeaderNavigation({Key? key}) : super(key: key);

  @override
  _HeaderNavigationState createState() => _HeaderNavigationState();
}

class _HeaderNavigationState extends State<HeaderNavigation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [],
      ),
    );
  }
}
