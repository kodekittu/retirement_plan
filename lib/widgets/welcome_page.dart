import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        resizeToAvoidBottomInset : false,
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
                    onPressed: () {
                      _dialog(context);
             //          Navigator.pushNamed(context, loginRoute),
                    }
                  ),
                ]),
            ),],
              ),
            ),
            ]
          ),
        )
       );
  }

}

_dialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return YourName();
    },
  );
}
class YourName extends StatefulWidget {
  @override
  _YourNameState createState() => _YourNameState();
}

class _YourNameState extends State<YourName> {
  final name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          padding: EdgeInsets.only(right: 16.0),
          height: 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Row(
            children: <Widget>[
              SizedBox(width: 20.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                          "Hey, What's your name?"),
                    ),
                    SizedBox(height: 10.0),
                    Expanded(
                      child:TextField(
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        controller: name,
                      ),
                    ),
                    Center(
                      child: Expanded(
                        child: RaisedButton(
                          child: Text("GO!!"),
                          color: Colors.green,
                          colorBrightness: Brightness.dark,
                          onPressed: () async {
                            SharedPreferences pref = await SharedPreferences.getInstance();
                            pref.setString("name", name.text);
                            Navigator.pushNamed(context, loginRoute);
                          },
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(20.0)),
                       ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

