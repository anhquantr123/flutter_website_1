import 'package:flutter/material.dart';
import 'package:flutter_website_1/constants/constants.dart';
import 'package:flutter_website_1/constants/string_value.dart';
import 'package:flutter_website_1/constants/widget_export.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<int> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation =
        IntTween(begin: 0, end: titleHomeInfo.length).animate(controller);
    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudPageColor,
      body: Column(
        children: [
          AnimatedBuilder(
              animation: animation,
              builder: (context, child) =>
                  Text(titleHomeInfo.substring(0, animation.value) + "_"))
        ],
      ),
    );
  }
}
