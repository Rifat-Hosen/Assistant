
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../index.dart';
import 'index.dart';
import 'responsive_layout/index.dart';
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
      child: ResponsiveLayout(
        mobileBody: MobileBody(),
        tabletBody: TabBody(),
        desktopBody: DesktopBody(),
      ),
    );
  }
}
