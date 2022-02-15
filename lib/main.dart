import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_website_1/constants/constants.dart';
import 'package:flutter_website_1/constants/string_value.dart';
import 'package:flutter_website_1/controller/select_menu.dart';
import 'package:flutter_website_1/screen/authen/authen_screen.dart';
import 'package:flutter_website_1/screen/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider(create: (context) => SelectMenu())],
      child: MaterialApp(
          title: titleWeb,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: primaryColor),
          home: HomeScreen()),
    );
  }
}
