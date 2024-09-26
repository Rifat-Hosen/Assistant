import 'package:assistant/core/values.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../core/architecture/index.dart';
import '../home_vm.dart';

class DesktopBody extends IView<HomeVM> {
  @override
  Widget buildWidget(BuildContext context, HomeVM viewModel) {
    return Row(
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
                      print(viewModel.model.chat_tab);
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
              Column(
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
              )
            ],
          ),
        ),
        //chat(),
        viewModel.model.chat_tab ? const chat(): const SizedBox(),
        Expanded(
          flex: 6,
          child: Container(
            color: Colors.transparent,
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'AI-Legal Advisor',
                          style: TextStyle(
                            fontSize: 50,

                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: viewModel.model.assistants.map((assistant) {
                              return assistantCard(
                                icon_name: assistant.icon_name,
                                name: assistant.name,
                                isSelect: assistant.isSelect,
                                description: assistant.description, // Description
                                ispro: assistant.isPro,
                              );
                            }).toList(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Expanded(
                                child: Text(
                                  'Start a new Conversation',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 40),
                                ),
                              ),
                              Container(
                                width: 200,
                                height: 60,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), border: Border.all(color: Colors.black38)),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: 24,
                                    ),
                                    Text(
                                      'New Topic',
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Text(
                          'Popular topics',
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child : Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: viewModel.model.topicsList.map((topic){
                              return HoverContainer( topic: topic, viewModel: viewModel,);
                            }
                            ).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        color: Colors.transparent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 60.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: const Color(0XFFF4F5F6),
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: const Icon(Icons.add),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        labelText: 'Enter your text',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 125,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF4A39E4),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Send',
                                        style: TextStyle(
                                          color: Color(0xFF9EB2BF),
                                          fontSize: 20,
                                        ),
                                      ),
                                      Icon(
                                        Icons.send,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45),
                        child: Row(
                          children: [
                            const Text(
                              'Type',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: const Color(0xFFB4B3B3),
                                  ),
                                ),
                                child: const Align(
                                  child: Text(
                                    '/',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            const Text(
                              'to use custom tool',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container assistantCard({
    required String icon_name,
    required String name,
    required bool isSelect,
    required String description,
    required bool ispro,
  }) {
    return Container(
      width: 328,
      height: 175,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFFCFDFD),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: const Color(0x4E797373),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: Image.asset("assets/images/${icon_name}"),
            ),
            const Gap(5),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  margin: const EdgeInsets.only(bottom: 5, top: 5),
                  decoration: BoxDecoration(
                    color: ispro ? const Color(0xFF3F43BB) : const Color(0xFFDFDFF4),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0x4E797373),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    ispro ? 'Pro' : 'Free',
                    style: TextStyle(color: ispro ? Colors.white : Colors.blue),
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    description,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                const Gap(10),
                Container(

                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: isSelect ? const Color(0xFF33373F) : Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0x4E797373),
                      width: 1,
                    ),
                  ),
                  child: isSelect
                      ? const Text(
                          'Selected',
                          style: TextStyle(color: Colors.white),
                        )
                      : const Text(
                          'Select',
                          style: TextStyle(color: Colors.black),
                        ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

}

class HoverContainer extends StatelessWidget {
  final HomeVM viewModel;
  final String topic;
  const HoverContainer({
    required this.viewModel,
    required this.topic,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool effect = false;
    void hoverIn() {
      effect = true;
      viewModel.setState();
    }
    void hoverOut(){
      effect = false;
      viewModel.setState();
    }

    return MouseRegion(
      cursor: SystemMouseCursors.text,
      onEnter: (_) => hoverIn(),
      onExit: (_) => hoverOut(),
      child: Container(
        decoration: BoxDecoration(
          color: effect ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),  // Shadow color with transparency
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 5),
            ),
          ],
        ),

        width: 185,
        height: 210,
        margin: const EdgeInsets.only(right: 10),
        child:  Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                topic,
                textAlign: TextAlign.start,
                maxLines: 6,
              ),
            ),
            const Row(mainAxisSize: MainAxisSize.max, mainAxisAlignment: MainAxisAlignment.end, children: [
              Icon(
                Icons.mode_edit_outlined,
                size: 24,
              ),
              Align(
                alignment: AlignmentDirectional(1, 0),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 24,
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }


}

class chat extends StatelessWidget {
  const chat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Assistant',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              const Gap(25),
              Container(
                width: 200,
                height: 62,
                decoration: BoxDecoration(
                  color: const Color(0xFF4A39E4),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.add_comment_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                    Text(
                      'New Chat',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) => buildChatContainer()),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'No records found',
                  ),
                  Text(
                    'Cleate New Chat',
                    style: TextStyle(
                      color: Color(0xFF2A85CA),
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildChatContainer() {
  return Container(
    height: 40,
    margin: const EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      color: const Color(0xFFF0F0EF),
      borderRadius: BorderRadius.circular(30),
    ),
    alignment: Alignment.center, // Center the text
    child: const Text(
      '',
      style: TextStyle(color: Colors.black), // Text color
    ),
  );
}
