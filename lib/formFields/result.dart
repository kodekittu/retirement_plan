
import 'package:flutter/material.dart';
import 'package:retirement_plan/widgets/choose_page.dart';

import 'formPage.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  final Color primary = Color(0xff4BBEC0);

  final TextStyle style = TextStyle(
    color: Colors.black,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Ink(
            decoration: BoxDecoration(
              color: primary,
            ),
          ),
          Positioned(
            top: -100.0,
            left: 100.0,
            child: Transform.rotate(
              angle: -0.5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.3),
                ),
                width: 150,
                height: 300,

              ),
            ),
          ),
          Positioned(
            bottom: -120.0,
            right: 90.0,
            child: Transform.rotate(
              angle: -0.8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.3),
                ),
                width: 150,
                height: 300,

              ),
            ),
          ),
          Positioned(
            top: -50.0,
            left: 30.0,
            child: Transform.rotate(
              angle: -0.5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.3),
                ),
                width: 150,
                height: 200,

              ),
            ),
          ),
          Positioned(
            bottom: -80.0,
            right: 0.0,
            child: Transform.rotate(
              angle: -0.8,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.3),
                ),
                width: 150,
                height: 200,

              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text( "Your Result for Retirement planning",
                  style: style,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text( "Future Values - ${res.toString()}",
                  style: style,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: MaterialButton(
                elevation: 0,
                padding: const EdgeInsets.all(16.0),
                shape: CircleBorder(),
                onPressed: () => Navigator.push(context, MaterialPageRoute(
                    builder: (_) => ChoosePage()
                )),
                  color: Colors.grey.shade800,
                child: Icon(
                  Icons.clear,
                  color: primary,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


