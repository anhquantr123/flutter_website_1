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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                          child: Image.asset(
                        "assets/icons/facebook.png",
                        fit: BoxFit.cover,
                      )),
                    ),
                    if (Responsive.isDesktop(context))
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: backgroudPageColor,
                            borderRadius: BorderRadius.circular(18)),
                        child: TextField(
                          onChanged: (value) => {},
                          decoration: const InputDecoration(
                              hintText: "Tìm kiếm trên facebook",
                              border: InputBorder.none),
                        ),
                      ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 4,
              child: Container(
                child: Text("This is text 2"),
              )),
          Expanded(
              flex: 3,
              child: Container(
                child: Text("This is text 3"),
              ))
        ],
      ),
    );
  }
}
