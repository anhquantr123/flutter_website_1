import 'package:flutter/material.dart';

class ResumeScreen extends StatefulWidget {
  ResumeScreen({Key? key}) : super(key: key);

  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "This is Resume ",
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}
