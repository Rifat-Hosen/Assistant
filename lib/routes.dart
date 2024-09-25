import 'package:assistant/pages/home/home_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  "/": (context) => HomeScreen(),
};
