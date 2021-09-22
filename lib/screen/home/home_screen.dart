import 'package:flutter/material.dart';
import 'package:flutter_website_1/constants/constants.dart';
import 'package:flutter_website_1/responsive.dart';
import 'package:flutter_website_1/widgets/header.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudPageColor,
      body: Column(
        children: [HeaderNavigation()],
      ),
    );
  }
}
