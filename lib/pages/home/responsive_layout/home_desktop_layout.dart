import 'package:assistant/core/extensions.dart';
import 'package:assistant/core/values.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/architecture/index.dart';
import '../Components/index.dart';
import '../home_vm.dart';

class DesktopBody extends IView<HomeVM> {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: AppColors.menuBarColor,
            width: 70,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/ki.png"),
                    const Gap(10),
                    Image.asset('assets/images/home.png'),
                    const Gap(10),
                    InkWell(
                      onTap: () {
                        viewModel.model.chat_tab = !viewModel.model.chat_tab;
                        viewModel.setState();
                      },
                      child: Image.asset('assets/images/chat.png'),
                    ),
                    const Gap(10),
                    Image.asset('assets/images/timer.png'),
                    const Gap(10),
                    Image.asset('assets/images/doc.png'),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Badge(
                        isLabelVisible: true,
                        label: Text('4'),
                        offset: Offset(8, -8),
                        backgroundColor: Colors.black87,
                        child: Icon(
                          Icons.notifications_none,
                        ),
                      ),
                      const Gap(10),
                      Image.asset('assets/images/setting.png'),
                      const Gap(5),
                      Image.asset('assets/images/profile.png'),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: viewModel.model.chat_tab ? 2 : 0,  // Use condition to determine flex value
            child: viewModel.model.chat_tab ? const chat() : const SizedBox(),  // Conditional widget
          ),
          Expanded(
            flex: 6,
            child: HomeMainBody(viewModel : viewModel),
          ),
        ],
      ),
    );
  }
}



