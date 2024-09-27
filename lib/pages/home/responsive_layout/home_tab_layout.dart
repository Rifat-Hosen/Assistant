import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../index.dart';
import '../Components/index.dart';
import '../home_vm.dart';

class TabBody extends IView<HomeVM> {
  @override
  Widget buildWidget(BuildContext context, HomeVM viewModel) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Color(0XFFB5F3FE),
          leading: Image.asset("assets/images/ki.png"),
          actions: [
            const Icon(Icons.document_scanner_outlined,color: Colors.black,size: 35,),
            const Gap(20),
            Badge(
              isLabelVisible: true,
              label: Text(viewModel.model.notification_count.toString()),
              offset: Offset(5, -5),
              backgroundColor: Colors.red,
              child: Icon(
                Icons.notifications_none,color: Colors.black,size: 35,
              ),
            ),
            const Gap(10),
            Image.asset('assets/images/profile.png'),
            const Gap(5),
          ],
          bottom: const TabBar(
            dividerColor: Colors.white,
            unselectedLabelColor: Colors.black,
            labelColor: Colors.blue,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home_outlined,
                  size: 25,
                ),
              ),
              Tab(
                icon: Icon(Icons.chat, size: 25),
              ),
              Tab(
                icon: Icon(Icons.watch_later_outlined, size: 25),
              ),
              Tab(
                icon: Icon(Icons.settings, size: 25),
              )
            ],
            indicator: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.transparent), // Removes TabBar underline
              ),
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.transparent, // No border
              width: 0, // Set border width to 0
            ),
            gradient: LinearGradient(
              colors: [
                Color(0XFFA4F0FE),
                Color(0XFFFFF0FE),
                Colors.white,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child:  TabBarView(
            children: [

              HomeMainBody(viewModel : viewModel),
              chat(),
              Center(
                child: Text("Working on Feature"),
              ),
              Center(
                child: Text("Working on Feature"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
