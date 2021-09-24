import 'package:flutter/material.dart';
import 'package:flutter_website_1/constants/constants.dart';
import 'package:flutter_website_1/controller/select_menu.dart';
import 'package:provider/provider.dart';

class HeaderMenu extends StatefulWidget {
  const HeaderMenu({Key? key}) : super(key: key);

  @override
  State<HeaderMenu> createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderMenu> {
  List<String> titleMenu = ["Home", "Resume", "Ui-App", "About Me"];
  int selectItem = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(5)),
        child: SizedBox(
          height: 50,
          width:
              size.width / 2 < 700 ? size.width / 2 + 50 : size.width / 2 - 50,
          child: ListView.builder(
              itemCount: titleMenu.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => menuItem(index)),
        ));
  }

  Widget menuItem(int index) => GestureDetector(
      onTap: () {
        setState(() {
          selectItem = index;
          context.read<SelectMenu>().changeMenu(index);
        });
      },
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: selectItem == index
                  ? colorButtonSelect
                  : colorButtonUnSelect),
          child: Center(
              child: Text(titleMenu[index].toString(),
                  style: TextStyle(
                      fontSize: selectItem == index ? 18 : 14,
                      fontWeight: selectItem == index ? fontBold : fontNormal,
                      color: selectItem == index
                          ? whiteColor
                          : Colors.black.withOpacity(0.5))))));
}
