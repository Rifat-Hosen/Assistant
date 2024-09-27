
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../index.dart';
import 'index.dart';
import 'responsive_layout/index.dart';
class HomeScreen extends IView<HomeVM> {
  @override
  Widget buildWidget(BuildContext context, HomeVM viewModel) {
    return ResponsiveLayout(
      mobileBody: MobileBody(),
      tabletBody: TabBody(),
      desktopBody: DesktopBody(),
    );
  }
}
