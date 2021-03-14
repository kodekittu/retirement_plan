import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:retirement_plan/formFields/formPage.dart';
import 'package:retirement_plan/widgets/blog_page.dart';

import '../router.dart';

int x = 0;


class ChoosePage extends StatefulWidget {

  @override
  _ChoosePageState createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
        padding: const EdgeInsets.all(10.0),
        height: double.infinity ,
       width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Theme.of(context).accentColor,
                  Theme.of(context).primaryColor,
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Container(
            padding: EdgeInsets.all(data.size.height * 0.02),
            height: data.size.height * 0.16,
            width: data.size.width - data.size.width*0.04,
            child: Text('Do not save what is left after spending, but spend what is left after saving',
              style: TextStyle(fontSize: 20, color: Colors.black87) ,
              textAlign: TextAlign.center,
            ),
          ),
            Text("Where you can Invest",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),

            ),
            SizedBox(height: 40,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: OutlineButton(
                    borderSide: BorderSide( width: 2.0, style: BorderStyle.solid, color: Colors.amber),
                    child: Text("GOLD",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        x =0;
                      });
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_) => BlogPage()
                      ));
                    }
                ),
              ),
              Container(width: 200,
                child: OutlineButton(

                    borderSide: BorderSide( width: 2.0, style: BorderStyle.solid,color: Colors.amber),
                    child: Text("Mutual Funds",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        x =1;
                      });
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_) => BlogPage()
                      ));
                    }
                ),
              ),
              Container(width: 200,
                child: OutlineButton(
                    borderSide: BorderSide( width: 2.0, style: BorderStyle.solid,color: Colors.amber),
                    child: Text("Equity",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        x =2;
                      });
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_) => BlogPage()
                      ));
                    }
                ),
              ),
              Container(width: 200,
                child: OutlineButton(
                    borderSide: BorderSide( width: 2.0, style: BorderStyle.solid,color: Colors.amber),
                    child: Text("Stocks",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        x =3;
                      });
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_) => BlogPage()
                      ));
                    }
                ),
              ),
            ],
          ),
            SizedBox(height: 60,),
            Container(
              color: Colors.black,
              child: MaterialButton(
                  child: Text("PLAN MY RETIREMENT",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (_) => QuizPage()
                  ));
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
