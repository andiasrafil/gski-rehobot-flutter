import 'package:flutter/material.dart';

import '../router.dart';

class GskiRehobot extends StatefulWidget {
  @override
  _GskiRehobotState createState() => _GskiRehobotState();
}

class _GskiRehobotState extends State<GskiRehobot> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: Router.generateRoute,
      theme: ThemeData(
      ),
    );
  }
}