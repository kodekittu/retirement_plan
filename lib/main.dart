import 'package:flutter/material.dart';

import 'router.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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


