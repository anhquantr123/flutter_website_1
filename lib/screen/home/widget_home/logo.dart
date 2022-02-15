import 'package:flutter/material.dart';
import 'package:flutter_website_1/constants/constants.dart';
import 'package:flutter_website_1/controller/select_menu.dart';
import 'package:provider/provider.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<SelectMenu>().changeMenu(0);
      },
      child: Container(
          height: 60,
          width: 130,
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(20)),
          child: const Image(
              fit: BoxFit.cover, image: AssetImage("assets/images/logo.png"))),
    );
  }
}
