import 'package:assistant/core/extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/architecture/view.dart';
import '../home_vm.dart';

class MobileBody extends IView<HomeVM> {
  @override
  Widget buildWidget(BuildContext context, HomeVM viewModel) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          leading: Image.asset("assets/images/ki.png"),
          actions: [const Icon(Icons.lock_clock), const Gap(10), const Icon(Icons.notifications), const Gap(10), const Icon(Icons.settings), const Gap(5)],
          bottom: const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(Icons.chat_bubble),
              ),
              Tab(
                icon: Icon(Icons.video_call),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
              Tab(
                icon: Icon(Icons.settings),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Chats"),
            ),
            Center(
              child: Text("Calls"),
            ),
            Center(
              child: Text("Settings"),
            ),
            Center(
              child: Text("Settings"),
            ),
          ],
        ),
      ),
    );
  }
}
