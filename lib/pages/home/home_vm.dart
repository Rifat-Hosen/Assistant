import 'package:flutter/material.dart';
import '../../index.dart';
import 'index.dart';

class HomeVM extends ViewModel<HomeModel> {
  HomeVM({required super.model});

  @override
  void buildProperty(BuildContext context, [Object? args]) {
    super.buildProperty(context, args);
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
