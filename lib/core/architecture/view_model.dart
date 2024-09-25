
import 'package:flutter/material.dart';
import 'package:flutter_reactive_value/flutter_reactive_value.dart';

abstract class ViewModel<T> {
  final T model;
  Function(Function() f)? _stateHandler;
  final ReactiveValueNotifier<int> v = ReactiveValueNotifier(0);
  ViewModel({required this.model});

  set stateHandler(Function(Function() f) value ) => _stateHandler = value;

  void initState(BuildContext context){

  }

  void setState(){
    v.value = v.value+1;
    v.notifyChanged();
    if(_stateHandler != null){
      _stateHandler!((){});
    }
  }

  void buildProperty(BuildContext context, [Object? args]) {

  }
}