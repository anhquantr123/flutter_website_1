import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website_1/models/models.dart';
import 'package:flutter_website_1/widgets/card_item.dart';

class ResumeScreen extends StatefulWidget {
  ResumeScreen({Key? key}) : super(key: key);

  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height - 80,
      width: size.width,
      child: ListView(children: [
        CardItem(
            width: size.width / 2 - 40,
            image: BANG_CU_NHAN[0]['image'].toString()),
        const SizedBox(
          height: 20,
        ),
        CardItem(
            width: size.width / 2 - 40,
            image: BANG_CU_NHAN[1]['image'].toString())
      ]),
    );
  }
}
