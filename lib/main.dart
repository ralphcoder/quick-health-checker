import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:covidhealth/Inputpage.dart';
import 'screen1.dart';

void main() {
  runApp(covidhealth());
}

class covidhealth extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
      home: screen1(),
    );
  }
}
