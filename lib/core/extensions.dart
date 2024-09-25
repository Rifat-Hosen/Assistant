import 'package:flutter/material.dart';

import '../main.dart';

extension PreSize on num {
  SizedBox get ph => SizedBox(height: rp.toDouble());

  SizedBox get pw => SizedBox(width: rp.toDouble());

  double get rp {
    BuildContext? context = MyApp.navigatorKey.currentContext;
    if (context != null) {
      final ratio = MediaQuery.of(context).devicePixelRatio;
      return toDouble() / ratio;
    }
    return toDouble();
  }
}
