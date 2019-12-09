import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_sample/ui/home/home_screen.dart';
import 'package:flutter_architecture_sample/ui/login/login_screen.dart';

class Router {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ScreenNames.Home:
        return _buildRoute(HomeScreen.newInstance());
      case ScreenNames.Login:
        return _buildRoute(LoginScreen.newInstance());
      default:
        return _buildRoute(Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        ));
    }
  }

  static PageRoute _buildRoute(Widget child) {
    return CustomPageRoute(widget: child);
  }

  static String get initialRoute => ScreenNames.Home;

  static Future<dynamic> push(String name, {Object arguments}) async {
    return await navigator.pushNamed(ScreenNames.Login, arguments: arguments);
  }

  static void pop([dynamic result]) {
    navigator.pop(result);
  }
}

class ScreenNames {
  static const Home = "/";
  static const Login = "/login";
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget widget;
  CustomPageRoute({this.widget})
      : super(pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return widget;
        }, transitionsBuilder: (BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child) {
          return FadeTransition(
            opacity:
                CurvedAnimation(curve: Curves.fastOutSlowIn, parent: animation),
            child: ScaleTransition(
              scale:
                  CurvedAnimation(curve: Curves.decelerate, parent: animation),
              child: child,
            ),
          );
        });
}
