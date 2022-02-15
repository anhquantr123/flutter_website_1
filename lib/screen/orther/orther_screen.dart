import 'package:flutter/material.dart';
import 'package:flutter_website_1/models/models.dart';

import '../../widgets/card_item.dart';

class OrtherScreen extends StatelessWidget {
  const OrtherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height - 80,
      width: size.width,
      child: ListView.separated(
          itemBuilder: (_, index) => displayOrther(index, size),
          separatorBuilder: (_, index) => const SizedBox(
                height: 10,
              ),
          itemCount: ORTHER.length),
    );
  }

  displayOrther(int index, Size size) {
    return CardItem(
        image: ORTHER[index]['image'].toString(), width: size.width * 0.5);
  }
}
