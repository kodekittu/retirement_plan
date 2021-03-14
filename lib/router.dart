import 'package:flutter/material.dart';
import 'package:retirement_plan/formFields/formPage.dart';
import 'package:retirement_plan/load_page.dart';
import 'package:retirement_plan/widgets/signup_page.dart';
import 'widgets/blog_page.dart';
import 'widgets/choose_page.dart';
import 'widgets/login_page.dart';
import 'widgets/welcome_page.dart';


const String splashScreenViewRoute = '/';
const String homeRoute = 'home';
const String load = 'load';
const String loginRoute = 'login';
const String signupRoute = 'signup';
const String chooseRoute = 'choose';
const String quiz = 'quiz';
const String postRoute = 'post';
const String blogRoute = 'blog';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name){
    case load :
      return MaterialPageRoute(builder: (context) => Load());
    case homeRoute:
      return MaterialPageRoute(builder: (context) => WelcomePage());
      case quiz:
    return MaterialPageRoute(builder: (context) => QuizPage());
    case signupRoute:
      return MaterialPageRoute(builder: (context) => SignupPage());
    case loginRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case chooseRoute:
      return MaterialPageRoute(builder: (context) => ChoosePage());
    case blogRoute:
      return MaterialPageRoute(builder: (context) => BlogPage());
  }
  }
