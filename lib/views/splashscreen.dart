import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final int _duration = 2000;

  @override
  void initState() {
    super.initState();
    redirectToLoginPage();
      }
      @override
      Widget build(BuildContext context) {
        return Stack(
          children: [
            Image(
            image: AssetImage('assets/images/splash.jpg'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            ),
            Positioned(
              child: Container(
                child: Image(
            image: AssetImage('assets/images/logo.png'),
            alignment: Alignment.center,
            ),
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
              ),
              top: MediaQuery.of(context).size.height * 0.2,
            ),
          ],
        );
      }
    
      void redirectToLoginPage() {
        Timer(
          Duration(milliseconds: _duration), 
          (){
            return Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
          });
      }
}