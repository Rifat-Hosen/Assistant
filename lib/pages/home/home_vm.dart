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
      return MediaQuery.of(context).size.width > 600;
  }
  bool isDesktop(BuildContext context){
    return MediaQuery.of(context).size.width > 1280;
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
