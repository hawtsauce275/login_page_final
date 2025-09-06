import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'login_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login_page':
        return MaterialPageRoute(builder: (_) => LoginPage(appName: 'PlayBook',));
      case '/dashboard_page':
        return MaterialPageRoute(builder: (_) => DashBoardPage(userName: 'Abhay',));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}