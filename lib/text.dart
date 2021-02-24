import 'package:flutter/material.dart';
import 'package:flutter_app_test_otp/counter.dart';

class TextPage extends StatefulWidget {
  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.red,
        height: size.height,
        width: size.width,
        child: Text(
          listBlocInstance.turnOn.toString(),
        ),
      ),
    );
  }
}
