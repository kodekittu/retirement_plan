import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:retirement_plan/load_page.dart';

import 'router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'we care for you',
      theme: ThemeData(
      //  brightness: Brightness.dark,
        cursorColor: Colors.pink,
        buttonColor: Colors.deepPurpleAccent,
        hoverColor: Colors.lightGreenAccent,
        primaryColor: Colors.blue,
        primarySwatch: Colors.amber,
        accentColor: Colors.greenAccent,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      initialRoute: load,
    );
  }
}


