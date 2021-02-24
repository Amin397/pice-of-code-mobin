import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test_otp/counter.dart';
import 'package:flutter_app_test_otp/text.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Size size;

  bool isExpanded = false;

  bool _slowAnimations = false;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: SafeArea(
          child:Align(
            alignment: Alignment.bottomRight,
            child: OpenContainer(
              closedElevation: 0,
              openColor: Colors.red,
              transitionType: ContainerTransitionType.fade,
              transitionDuration: const Duration(seconds: 1),
              closedColor: Colors.red,
              openBuilder: (context, _) {
                return TextPage();
              },
              closedBuilder: (context, VoidCallback openContainer) {
                return GestureDetector(
                  onTap: openContainer,
                  child: Container(
                    height: 60.0,
                    width: 60.0,
                    color: Colors.red,
                  ),
                );
              },
            ),
          )
        ),
      ),
    );
  }
}
