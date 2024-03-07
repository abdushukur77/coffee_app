import 'package:coffee_app/data/model.dart';
import 'package:coffee_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'detail/detail_screen.dart';
import 'home/home_screen.dart';

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return navigate(const SplashScreen());

      case RouteNames.home:
        return navigate(HomeScreen());
      // case RouteNames.detail:
      //   return navigate(DetailScreen(coffeeModel: CoffeeModel,
      //
      //
      //   ));

      default:
        return navigate(
          const Scaffold(
            body: Center(
              child: Text("This kind of rout does not exist!"),
            ),
          ),
        );
    }
  }

  static navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}

class RouteNames {
  static const String splash = "/";
  static const String home = "/home";
  static const String detail = "/detail";
}
