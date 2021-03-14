import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

import '../router.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}
class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    // Fixing Screen in Portrait Mode
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/poster.jpg'),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          child: Stack(
            children: <Widget>[
          Container(
          color: Colors.black54,
            width: data.size.width,
            height: data.size.height ,
            child: Column(
                children: <Widget>[
             SizedBox(height: data.size.height * 0.2),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 30.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "WHY Retirement Planning \n \nRetirement planning is the process of determining retirement income goals, and the actions and decisions necessary to achieve those goals. Retirement planning includes identifying sources of income, sizing up expenses, implementing a savings program, and managing assets and risk.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 40.0),
                  OutlineButton(
                    borderSide: BorderSide(color: Colors.red, width: 2.0, style: BorderStyle.solid),
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text("Let's get Startted",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () => Navigator.pushNamed(context, loginRoute),
                  ),
                ]),
            ),],
              ),
            ),
                  SizedBox(height:data.size.height * 0.2,)
            ]
          ),
        )
       );
  }
}
