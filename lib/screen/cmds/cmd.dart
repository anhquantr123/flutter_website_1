import 'package:flutter/material.dart';
import 'package:flutter_website_1/widgets/card_item.dart';

import '../../models/models.dart';

class CMD extends StatelessWidget {
  const CMD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height - 80,
      width: size.width,
      child: ListView.separated(
          itemBuilder: (_, index) => displayCCCD(index, size),
          separatorBuilder: (_, index) => const SizedBox(
                height: 10,
              ),
          itemCount: CMD_DATA.length),
    );
  }

  displayCCCD(int index, Size size) {
    return CardItem(
        image: CMD_DATA[index]['image'].toString(), width: size.width * 0.45);
  }
}
