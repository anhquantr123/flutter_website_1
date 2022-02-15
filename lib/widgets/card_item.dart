import 'package:flutter/material.dart';
import 'package:flutter_website_1/responsive.dart';

class CardItem extends StatelessWidget {
  final double width;
  final String image;
  const CardItem({Key? key, required this.width, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isMobile(context) ? width / 2 : width,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
    );
  }
}
