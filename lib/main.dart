import 'package:flutter/material.dart';
import 'dart:math' as math;

void main(){
  runApp(TestTaskChangingBgColor());
}

class TestTaskChangingBgColor extends StatefulWidget {
  @override
  _TestTaskChangingBgColorState createState() => _TestTaskChangingBgColorState();
}

class _TestTaskChangingBgColorState extends State<TestTaskChangingBgColor> {

  Color bgColor;

  void changeBgColor(){
    setState(() {
      bgColor = Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
    print(bgColor);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TestApp',
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        backgroundColor: bgColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                child: Text("Hey there", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w200),),
                onPressed: changeBgColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
