import 'package:flutter/material.dart';

class result extends StatelessWidget {
  result({this.resulttext, this.resultno, this.resultinfo});
  final String resulttext;
  final String resultno;
  final String resultinfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF0A0E21),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Text(
            'Your Result',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color(0xFF383838),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30.0),
                  Text(
                    resulttext,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0XFFf27644),
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(height: 90.0),
                  Text(
                    resultno,
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 70.0,
                        color: Color(0XFF7ec204)),
                  ),
                  SizedBox(height: 90.0),
                  Text(
                    resultinfo,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              height: 60.0,
              color: Color(0xFFf27644),
              child: Center(
                child: Text(
                  'Re-Calculate',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
