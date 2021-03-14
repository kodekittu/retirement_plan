import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:retirement_plan/widgets/choose_page.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';
import '../router.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading  = false;
  @override
  Widget build(BuildContext context) {
    MediaQueryData data = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Container(
        padding: const EdgeInsets.all(16.0),
        height: double.infinity ,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).accentColor,
                ]
            )
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 40.0),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                  fit: BoxFit.fill,
                  alignment: Alignment.center,
                ),
              ),
              height: data.size.height * .2,
              width: data.size.height * .2,
                ),
            SizedBox(height: 30.0),
            Text("Retirement Planning", style: TextStyle(
                color: Colors.white70,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 35.0),
            TextField(
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              controller: usernameController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                prefixIcon: Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(10.0)
                        )
                    ),
                    child: Icon(Icons.person, )),
                hintText: "enter your Email Id",
                hintStyle: TextStyle(color: Colors.white54),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
              ),

            ),
            SizedBox(height: 10.0),
            TextField(
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              controller: passwordController,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                prefixIcon: Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(10.0)
                        )
                    ),
                    child: Icon(Icons.lock,)),
                hintText: "enter your password",

                hintStyle: TextStyle(color: Colors.white54),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30.0),
            isLoading == false ? SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.white,
                padding: const EdgeInsets.all(8.0),
                child: Text("Login".toUpperCase(), style: TextStyle(fontSize: 24),),
                onPressed: () async{
                   print("${usernameController.text}.........................    ${passwordController.text}");
                   if(usernameController.text == ""){
                       showToast("Please fill Email");
                   }else if(passwordController.text == ""){
                       showToast("Please fill Password");
                   }else{
                    await logIn(usernameController.text, passwordController.text);
                  }
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
              ),
            ): CircularProgressIndicator(),
            Spacer(),
            FlatButton(
              textColor: Colors.white70,
              child: Text("Create Account".toUpperCase()),
              onPressed: () => Navigator.pushNamed(context, signupRoute),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }

Future<http.Response> logIn(String username, String password)
async {
  final url = 'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBiqcmFw0tVc-OBVf_dGpHO_nZ7eD7iJAM';
  setState(() {
    isLoading = true;
  });
  try {
    final response = await http.post(url, headers: {"Content-Type": "application/json"}, body: json.encode({
      'email' : username,
      'password': password
    }));

    print("${response.statusCode}");
    print("${response.body}");

    final res = json.decode(response.body);

    if(res['localId'] != null){
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setBool("logedin", true);
      await Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => ChoosePage()),
              (Route<dynamic> route) => false);
    }else{
      showToast("User not Found");
      setState(() {
        isLoading = false;
      });
    }
  } catch (error) {
    setState(() {
      isLoading = false;
    });
    showToast(error.toString());
    print(error);
  }
}
}

showToast(String text) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.redAccent,
      textColor: Colors.white,
      fontSize: 16.0
  );
}

