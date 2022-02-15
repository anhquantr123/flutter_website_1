import 'package:flutter/material.dart';
import 'package:flutter_website_1/constants/constants.dart';
import 'package:flutter_website_1/constants/screen_export.dart';
import 'package:flutter_website_1/constants/string_value.dart';
import 'package:flutter_website_1/constants/widget_export.dart';
import 'package:flutter_website_1/controller/select_menu.dart';
import 'package:flutter_website_1/responsive.dart';
import 'package:flutter_website_1/screen/mobile/mobile_screen.dart';
import 'package:flutter_website_1/screen/orther/orther_screen.dart';
import 'package:provider/provider.dart';

import '../cmds/cmd.dart';

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
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
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
    Size size = MediaQuery.of(context).size;
    List _listBody = [
      ResumeScreen(),
      const CMD(),
      const OrtherScreen(),
    ];

    return ChangeNotifierProvider(
        create: (context) => SelectMenu(),
        builder: (context, child) {
          var currentMenu =
              Provider.of<SelectMenu>(context, listen: true).currentMenu;

          return Scaffold(
              backgroundColor: backgroudPageColor,
              body: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/background4.jpg"),
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: (Responsive.isDesktop(context) ||
                              Responsive.isTablet(context)
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [Logo(), HeaderMenu()],
                                ),
                                currentMenu == 0
                                    ? SizedBox(
                                        width: size.width,
                                        height: 460,
                                        child: Center(
                                          child: AnimatedBuilder(
                                              animation: animation,
                                              builder: (context, child) => Text(
                                                    titleHomeInfo.substring(0,
                                                            animation.value) +
                                                        "_",
                                                    style: const TextStyle(
                                                        fontSize: 36,
                                                        color: whiteColor),
                                                  )),
                                        ),
                                      )
                                    : _listBody[currentMenu - 1]
                              ],
                            )
                          : const MobileScreen()))));
        });
  }
}
