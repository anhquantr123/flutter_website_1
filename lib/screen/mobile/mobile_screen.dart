import 'package:flutter/material.dart';
import 'package:flutter_website_1/models/models.dart';
import 'package:flutter_website_1/widgets/card_item.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.separated(
        itemBuilder: (_, index) => displayCCCD(index, size),
        separatorBuilder: (_, index) => const SizedBox(
              height: 10,
            ),
        itemCount: CMD_DATA.length);
  }

  displayCCCD(int index, Size size) {
    return CardItem(
        image: CMD_DATA[index]['image'].toString(), width: size.width * 0.7);
  }
}
