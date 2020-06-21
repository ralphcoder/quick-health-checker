import 'package:covidhealth/Inputpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0A0E21),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Transform.translate(
            offset: Offset(30.0, -30.0),
            child: Container(
              child: Center(
                child: Text(
                  'Check Your Fitness',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFFffffff),
                  ),
                ),
              ),
              height: 160,
              width: 450,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Color(0XFF4c3a8a),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(6.0),
                    topRight: const Radius.circular(5.0),
                    bottomLeft: const Radius.circular(90.0),
                    bottomRight: const Radius.circular(5.0),
                  )),
            ),
          ),
          Transform.translate(
            offset: Offset(110.0, -80.0),
            child: RawMaterialButton(
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
              child: Container(
                height: 70,
                width: 170,
                decoration: BoxDecoration(
                    color: Color(0XFF7ec204),
                    borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(5.0),
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(5.0),
                    )),
                child: Center(
                  child: Text(
                    ' Start',
                    style: TextStyle(
                      letterSpacing: 5.0,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900,
                      color: Color(0XFFffffff),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          child: Text('Go!'),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Inputpage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(55, 55.0);
      var end = Offset.zero;
      var tween = Tween(begin: begin, end: end);
      var offsetAnimation = animation.drive(tween);
      return child;
    },
  );
}
