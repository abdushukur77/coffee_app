// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:coffee_app/screens/routes.dart';
import 'package:coffee_app/screens/splash/splash_screen.dart';
import 'package:coffee_app/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 926),
      builder: (context, child) {
        return AdaptiveTheme(
            light: AppTheme.lightTheme,
            dark: AppTheme.darkTheme,
            initial: AdaptiveThemeMode.system,
            builder: (theme, darkTheme) {
              return MaterialApp(
                theme: theme,
                darkTheme: darkTheme,
                themeMode: ThemeMode.system,
                home: child,
                initialRoute: RouteNames.splash,
                onGenerateRoute: AppRoutes.generateRoute,
                debugShowCheckedModeBanner: false,
              );
            });
      },
      child: SplashScreen(),
    );
  }
}
