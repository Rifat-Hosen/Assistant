import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../index.dart';
import 'index.dart';


class HomeScreen extends IView<HomeVM> {
  @override
  Widget buildWidget(BuildContext context, HomeVM viewModel) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0XFFE4F0FE),
            Color(0XFFDCEBFC),
            Colors.white,
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Assistant'),
        ),
        backgroundColor: Colors.transparent,
        body:  Center(
          child: Text("AI-ASSISTANT",style: TextStyle(color: Colors.black),),
        )
      ),
    );
  }

}
