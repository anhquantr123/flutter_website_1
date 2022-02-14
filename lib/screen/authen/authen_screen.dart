import 'package:flutter/material.dart';
import 'package:flutter_website_1/constants/constants.dart';
import 'package:flutter_website_1/constants/screen_export.dart';
import 'package:flutter_website_1/responsive.dart';

class AuthenScreen extends StatefulWidget {
  const AuthenScreen({Key? key}) : super(key: key);

  @override
  _AuthenScreenState createState() => _AuthenScreenState();
}

class _AuthenScreenState extends State<AuthenScreen> {
  TextEditingController _inputTextController = TextEditingController();
  bool _passwordVisible = true;
  bool _textError = false;
  FocusNode focus = FocusNode();

  @override
  void initState() {
    focus.addListener(() {
      setState(() {
        _textError = false;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _inputTextController.dispose();
    super.dispose();
    focus.dispose();
  }

  void _handingButton() {
    var text = _inputTextController.text;
    if (text != null && text == "23041999") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      setState(() {
        _textError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Container(
        padding: Responsive.isMobile(context)
            ? const EdgeInsets.symmetric(horizontal: 20, vertical: 10)
            : const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        height: Responsive.isMobile(context)
            ? size.height * 0.3
            : size.height * 0.5,
        width:
            Responsive.isMobile(context) ? size.width * 0.8 : size.width * 0.5,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 10,
                  spreadRadius: 5,
                  offset: const Offset(2, 2))
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Vui lòng nhập mã bảo mật:",
            style: textStyleBodyBold,
          ),
          const SizedBox(
            height: 10,
          ),

          // add input text filed
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.85),
                borderRadius: BorderRadius.circular(25)),
            child: TextField(
              obscureText: _passwordVisible,
              focusNode: focus,
              controller: _inputTextController,
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  labelText: "Security code",
                  suffixIcon: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                  prefixIcon: const Icon(Icons.lock),
                  border: InputBorder.none),
            ),
          ),
          // add text error
          _textError
              ? const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Mã bảo mật không đúng? Thử lại",
                    style: TextStyle(fontSize: 10, color: Colors.red),
                  ),
                )
              : const SizedBox(
                  height: 10,
                ),
          InkWell(
            onTap: _handingButton,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                  color: const Color(0xFF03bafc),
                  borderRadius: BorderRadius.circular(25)),
              child: const Text("Tiếp tục"),
            ),
          ),
          const Spacer(),
          const Text(
            "*Nếu không có mã bảo mật xin vui lòng liên hệ: Nguyễn Văn Quân. Thanks!",
            style: TextStyle(fontSize: 10),
          ),
          const Text(
            "*Design by Nguyen Van Quan using Flutter.",
            style: TextStyle(fontSize: 10),
          )
        ]),
      )),
    );
  }
}
