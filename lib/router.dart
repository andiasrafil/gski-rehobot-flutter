import 'package:flutter/material.dart';
import 'package:gskirehobot/views/forgetpassword.dart';
import 'package:gskirehobot/views/homepage.dart';
import 'package:gskirehobot/views/login.dart';
import 'package:gskirehobot/views/profile.dart';
import 'package:gskirehobot/views/resetpassword.dart';
import 'package:gskirehobot/views/setting.dart';
import 'package:gskirehobot/views/splashscreen.dart';

class ModularRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => LoginPage(),
        );
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/setting':
        return MaterialPageRoute(builder: (_) => SettingPage());
      case '/resetpassword':
        return MaterialPageRoute(builder: (_) => ResetPasswordPage());
      case '/forgetpassword':
        return MaterialPageRoute(builder: (_) => ForgetPasswordPage());
      default:
        return MaterialPageRoute(
          builder: (_) => HomepageScreen(),
        );
    }
  }
}
