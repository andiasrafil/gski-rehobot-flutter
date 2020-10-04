import 'package:flutter/material.dart';
import 'package:gskirehobot/views/homepage.dart';
import 'package:gskirehobot/views/login.dart';
import 'package:gskirehobot/views/splashscreen.dart';

class Router{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen(),
        );
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage(),);
      default:
        return MaterialPageRoute(builder: (_) => HomepageScreen(),);
    }
  }
}
