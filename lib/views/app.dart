import 'package:flutter/material.dart';

import '../router.dart';
import 'package:gskirehobot/router.dart';

class GskiRehobot extends StatefulWidget {
  @override
  _GskiRehobotState createState() => _GskiRehobotState();
}

class _GskiRehobotState extends State<GskiRehobot> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: ModularRouter.generateRoute,
      theme: ThemeData(),
    );
  }
}
