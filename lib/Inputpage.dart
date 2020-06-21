import 'package:covidhealth/calculation.dart';
import 'package:covidhealth/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'calculation.dart';

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  @override
  int age = 30;
  int weight = 60;
  int height = 180;
  Color malecard = Color(0XFF383838);
  Color femalecard = Color(0XFF383838);
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title: Text('Covid Health'),
//      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        malecard = Color(0XFF383849);
                        femalecard = Color(0XFF383838);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: malecard,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            size: 80.0,
                            color: Color(0XFF7ec204),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Male',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0XFFffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        malecard = Color(0XFF383838);
                        femalecard = Color(0XFF383849);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: femalecard,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            size: 80.0,
                            color: Color(0XFF7ec204),
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'Female',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0XFFffffff),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT (cm)',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0XFFffffff),
                    ),
                  ),
                  Text(
                    height.toString(),
                    style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                        color: Color(0XFF7ec204)),
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0XFFf27644),
                    inactiveColor: Color(0XFFffffff),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF383838),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0XFFffffff),
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: kbigtext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              child: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              elevation: 2.0,
                              constraints: BoxConstraints.tightFor(
                                width: 46.0,
                                height: 46.0,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              fillColor: Color(0XFFf27644),
                            ),
                            SizedBox(width: 15.0),
                            RawMaterialButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              elevation: 2.0,
                              constraints: BoxConstraints.tightFor(
                                width: 46.0,
                                height: 46.0,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              fillColor: Color(0XFFf27644),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0XFFffffff),
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: kbigtext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              child: Icon(Icons.remove),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              elevation: 2.0,
                              constraints: BoxConstraints.tightFor(
                                width: 46.0,
                                height: 46.0,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              fillColor: Color(0XFFf27644),
                            ),
                            SizedBox(width: 15.0),
                            RawMaterialButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              elevation: 2.0,
                              constraints: BoxConstraints.tightFor(
                                width: 46.0,
                                height: 46.0,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              fillColor: Color(0XFFf27644),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              calculation calc = calculation(heightt: height, weightt: weight);
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => result(
                              resultno: calc.calculateno(),
                              resulttext: calc.calculatetext(),
                              resultinfo: calc.calculateinfo(),
                            )));
              });
            },
            child: Container(
              width: double.infinity,
              height: 60.0,
              color: Color(0XFF7ec204),
              child: Center(
                child: Text(
                  'Calculate',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                      color: Color(0XFfffffff)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
