import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/Views/pages/homePages.dart';
import 'package:flutter_application/Views/pages/settingPages.dart';
import 'package:flutter_application/Views/pages/signup.dart';
import 'package:flutter_application/Views/pages/welcome_page.dart';

class AppRoutes {
  static const String welcome = '/';
  static const String home = '/home';
  static const String signup = '/signup';
  static const String setting = '/setting';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (_) => WelcomePage());
      case home:
        return MaterialPageRoute(builder: (_) => homePages());
      case signup:
        return MaterialPageRoute(builder: (_) => Signup());
      case setting:
        return MaterialPageRoute(builder: (_) => SettingPage(title: 'Setting'));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(body: Center(child: Text('Page not found'))),
        );
    }
  }
}
