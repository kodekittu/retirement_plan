import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:retirement_plan/formFields/result.dart';

double res = 0;
final List<String> ques = [
  "What is your current age?",
  "Your desired Retirement age?",
  "Your monthly Income?",
  "Your monthly savings",
  "Where you want to Invest? "
];

final List<int> answ = [21, 65, 0, 0, 0];

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final TextStyle _questionStyle = TextStyle(
      fontSize: 20.0, fontWeight: FontWeight.w500, color: Colors.white);

  int _currentIndex = 0;
  final ans = TextEditingController();
  final Map<int, dynamic> _answers = {};
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        // backgroundColor: Colors.blueGrey.shade300,
        key: _key,
        appBar: AppBar(
          backgroundColor: Color(0xff4BBEC0),
          title: Text("HI"),
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff4BBEC0),
                ),
                height: 120,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipPath(
                clipper: WaveClipperTwo(reverse: true),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff4BBEC0),
                  ),
                  height: 120,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white70,
                        child: Text(
                          "${_currentIndex + 1}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: Text(
                          ques[_currentIndex],
                          softWrap: true,
                          style: _questionStyle,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 80.0),
                  _currentIndex == 4
                      ? Column(
                    children: [
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          color: Color(0xff4BBEC0),
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Stocks',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        onTap: () {
                          ans.text = '1';
                          _nextSubmit();
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          color: Color(0xff4BBEC0),
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Gold',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        onTap: () {
                          ans.text = '2';
                          _nextSubmit();
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          color: Color(0xff4BBEC0),
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Mutual Funds',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        onTap: () {
                          ans.text = '3';
                          _nextSubmit();
                        },
                      ),
                      GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          color: Color(0xff4BBEC0),
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'Fixed Deposits',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        onTap: () {
                          ans.text = '4';
                          _nextSubmit();
                        },
                      ),
                    ],
                  )
                      : Card(
                    child: TextField(
                      controller: ans,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16.0),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Color(0xff4BBEC0),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: Text(
                          _currentIndex == (4) ? "Submit" : "Next",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: _nextSubmit,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _nextSubmit() {
    if (ans.text == "") {
      _key.currentState.showSnackBar(SnackBar(
        content: Text("You must select an answer to continue."),
        backgroundColor: Colors.redAccent,
      ));
      return;
    }
    print(_currentIndex);
    print(int.parse(ans.text));
    if (_currentIndex <= 1) {
      if (int.parse(ans.text) < 21 || int.parse(ans.text) > 65) {
        _key.currentState.showSnackBar(SnackBar(
          content: Text("You must select age between 21 and 65"),
          backgroundColor: Colors.redAccent,
        ));
        return;
      }
    }
    if (_currentIndex == 1) {
      if (answ[0] > int.parse(ans.text)) {
        _key.currentState.showSnackBar(SnackBar(
          content: Text("Retirement age must be greater"),
          backgroundColor: Colors.redAccent,
        ));
        return;
      }
    }
    if (_currentIndex == 4) {
      if (int.parse(ans.text) < 1 || int.parse(ans.text) > 4) {
        _key.currentState.showSnackBar(SnackBar(
          content: Text("You must select between 1 and 4"),
          backgroundColor: Colors.redAccent,
        ));
        return;
      }
    }
    if (_currentIndex < 4) {
      setState(() {
        answ[_currentIndex] = int.parse(ans.text);
        _currentIndex++;
      });
      ans.clear();
    } else {
      res = calculate(answ[0], answ[1], answ[2], answ[3], answ[4]);
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => ResultPage()),
              (Route<dynamic> route) => false);
    }
  }

  Future<bool> _onWillPop() async {
    return showDialog<bool>(
        context: context,
        builder: (_) {
          return AlertDialog(
            content: Text("Are you sure you want to quit?"),
            title: Text("Warning!"),
            actions: <Widget>[
              FlatButton(
                child: Text("Yes"),
                onPressed: () {
                  Navigator.pop(context, true);
                },
              ),
              FlatButton(
                child: Text("No"),
                onPressed: () {
                  Navigator.pop(context, false);
                },
              ),
            ],
          );
        });
  }
}

double calculate(int curAge, int retAge, int monthSal, int savSal, int type) {
  double futureValue = 0;
  int years = retAge - curAge;
  futureValue = savSal * 12 * pow(1.06, years);
  futureValue = double.parse((futureValue).toStringAsFixed(3));
  return futureValue;
}