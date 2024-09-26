import 'package:flutter/material.dart';

import '../main.dart';

extension PreSize on num {
  //SizedBox get ph => SizedBox(height: rp.toDouble());
  //SizedBox get pw => SizedBox(width: rp.toDouble());

  double get rp {
    BuildContext? context = MyApp.navigatorKey.currentContext;
    if (context != null) {
      final size = MediaQuery.of(context).size;
      final ratio;
      if(size.width<size.height){
        ratio = size.width / size.height;
      }
      else {
        ratio = size.height / size.width;
      }
      final deviceRatio = MediaQuery.of(context).size.aspectRatio;
      //return toDouble() * deviceRatio;
      return toDouble() ;
    }
    return toDouble();
  }
}
