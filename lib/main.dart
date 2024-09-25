import 'package:assistant/routes.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

import 'core/index.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      routes: appRoutes,
      builder: (context, widget) {
        return OKToast(
          backgroundColor: Colors.white,
          duration: const Duration(seconds: 2),
          child: widget ?? Container(),
        );
      },
      theme: ThemeData(
        fontFamily: AppFonts.ibmPlexSans,
        brightness: Brightness.dark,
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: CustomPageTransitionsBuilder(),
        }),
      ),
    );
  }
}

class CustomPageTransitionsBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    return child;
  }
}