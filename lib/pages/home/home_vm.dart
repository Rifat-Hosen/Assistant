import 'package:flutter/material.dart';
import '../../index.dart';
import 'index.dart';

class HomeVM extends ViewModel<HomeModel> {
  HomeVM({required super.model});

  @override
  void buildProperty(BuildContext context, [Object? args]) {
    super.buildProperty(context, args);
  }
  bool isMobile(BuildContext context){
      return MediaQuery.of(context).size.width < 600;
  }
  bool isDesktop(BuildContext context){
    return MediaQuery.of(context).size.width > 1280;
  }

  bool effect = false;
  int hoverindex = -1;
  void hoverIn(int index) {
    effect = true;
    hoverindex = index;
    setState();
  }

  void hoverOut() {
    effect = false;
    hoverindex = -1;
    setState();
  }


/*void hoverIn() {
    model.hover = true;
    setState();
  }
  void hoverOut(){
    model.hover = false;
    setState();
  }*/


}
