


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../feature/onboard/wiew/onboard_view.dart';


class Routes {

  static const String splash = '/splash';
  static const String onboard = '/onboard';


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
       // return _buildPageRoute(const SplashView(), settings);

      case onboard:
        return _buildPageRoute(const OnboardView(), settings);

      default:
        return _buildPageRoute(Scaffold(body: Center(child: Text('No route defined for ${settings.name}'))), settings);
    }
  }

// uygulama geneli sayfa geçiş animasyonumuz
  static PageRouteBuilder _buildPageRoute(Widget page, RouteSettings settings) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      settings: settings,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = 0.0;
        const end = 1.0;
        const curve = Curves.easeInOut;

        final tween = Tween(begin: begin, end: end);
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return FadeTransition(
          opacity: tween.animate(curvedAnimation),
          child: child,
        );
      },
    );
  }
}