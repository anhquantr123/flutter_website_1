import 'package:flutter/material.dart';
import 'package:flutter_website_1/constants/screen_export.dart';
import 'package:flutter_website_1/controller/select_menu.dart';

import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentMenu = context.read<SelectMenu>().currentMenu;
    return Container(
      child: Column(
        children: [if (currentMenu == 1) ResumeScreen()],
      ),
    );
  }
}
