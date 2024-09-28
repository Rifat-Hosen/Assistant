import 'package:flutter/material.dart';

import '../main.dart';

extension PreSize on num {
  //SizedBox get ph => SizedBox(height: rp.toDouble());
  //SizedBox get pw => SizedBox(width: rp.toDouble());

  double get rp {
    BuildContext? context = MyApp.navigatorKey.currentContext;
    if (context != null) {
      final size = MediaQuery.of(context).size;
      double ratio;

      if (size.width < 600) {
        ratio = 600 / size.width;
      } else if (size.width <= 1024) {
        ratio =  (1024/size.width); // Adjust ratio for tablets
      } else {
        ratio = 1.0;  // Adjust ratio for desktops
      }
      return toDouble() / ratio;
    }
    return toDouble();
  }
  double get mrp {
    BuildContext? context = MyApp.navigatorKey.currentContext;
    if (context != null) {
      final size = MediaQuery.of(context).size;
      double ratio;

      if (size.width < 600) {
        ratio = 600 / size.width;
      }
      else {
        ratio = 1.0;  // Adjust ratio for desktops
      }
      return toDouble() / ratio;
    }
    return toDouble();
  }
}
