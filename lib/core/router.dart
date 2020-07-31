import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_sample/core/config/app_config.dart';
import 'package:flutter_architecture_sample/deeplink/deep_link_screen.dart';
import 'package:flutter_architecture_sample/home/home_screen.dart';
import 'package:flutter_architecture_sample/login/login_screen.dart';

class Router {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static NavigatorState get navigator => navigatorKey.currentState;

  static Route<dynamic> generateRoute(RouteSettings settings) {
    Widget widget;
    switch (settings.name) {
      case ScreenNames.Home:
        widget = HomeScreen.newInstance();
        break;
      case ScreenNames.Login:
        widget = LoginScreen.newInstance();
        break;
      case ScreenNames.DeepLink:
        widget = DeepLinkScreen(link: settings.arguments as String);
        break;
      default:
        widget = Scaffold(
          body: Center(child: Text('No route defined for ${settings.name}')),
        );
        break;
    }
    return _buildRoute(widget, settings);
  }

  static PageRoute _buildRoute(Widget child, RouteSettings settings) {
    return CustomPageRoute(widget: child, settings: settings);
  }

  static String get initialRoute => ScreenNames.Home;

  static Future<dynamic> push(String name, {Object arguments}) async {
    return await navigator.pushNamed(name, arguments: arguments);
  }

  static void pop([dynamic result]) {
    navigator.pop(result);
  }
}

class ScreenNames {
  static const Home = "/";
  static const Login = "/login";
  static const DeepLink = "/deeplink";
}

class CustomPageRoute extends PageRouteBuilder {
  final Widget widget;
  final RouteSettings settings;

  CustomPageRoute({this.widget, this.settings})
      : super(
            settings: settings,
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return Banner(
                child: widget,
                message: "${AppConfig.instance.bannerTitle}",
                location: BannerLocation.topEnd,
              );
            },
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return FadeTransition(
                opacity: CurvedAnimation(
                    curve: Curves.fastOutSlowIn, parent: animation),
                child: ScaleTransition(
                  scale: CurvedAnimation(
                      curve: Curves.decelerate, parent: animation),
                  child: child,
                ),
              );
            });
}
