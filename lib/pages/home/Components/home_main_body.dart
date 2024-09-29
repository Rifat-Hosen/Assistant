import 'package:assistant/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../index.dart';
import 'index.dart';

class HomeMainBody extends StatelessWidget {
  final HomeVM viewModel;
  const HomeMainBody({
    required this.viewModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
                visible: viewModel.isDesktop(context),
                child: Gap(40.rp),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'AI-Legal Advisor',
                      style: GoogleFonts.turretRoad(
                        fontSize: 70.rp,
                        fontWeight: FontWeight.w900// Adaptive font size
                      ),
                      /*style: TextStyle(
                          fontSize: 30.rp
                      ),*/
                    ),
                    Text(
                      'Your assistants are ready to work',
                      style: TextStyle(
                        fontSize: 32.rp,color: Colors.grey
                      ),
                    ),
                    Gap(30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: viewModel.model.assistants.map((assistant) {
                          return AssistaintDetailsContainer(
                              icon_name: assistant.icon_name, name: assistant.name, isSelect: assistant.isSelect, description: assistant.description, ispro: assistant.isPro);
                        }).toList(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Text(
                              'Start a new Conversation',
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              style: TextStyle(fontSize: 25.rp),
                            ),
                          ),
                          Expanded(
                            flex: viewModel.isDesktop(context) ? 1:2,
                            child: Container(

                              height: 60,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), border: Border.all(color: Colors.black38)),
                              child: const Row(
                                mainAxisSize: MainAxisSize.max,
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
                            ),
                          ),
                          Visibility(
                            visible: viewModel.isDesktop(context),
                            child: Gap(30),),
                        ],
                      ),
                    ),
                    const Text(
                      'Popular topics',
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: viewModel.model.topicsList.map((topic) {
                          return HoverContainer(
                            topic: topic,
                            viewModel: viewModel,
                          );
                        }).toList(),
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
                    height: 100.mrp,
                    color: Colors.transparent,
                    child: Row(
                      crossAxisAlignment: viewModel.isMobile(context) ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60.mrp,
                          height: 60.mrp,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    labelText: viewModel.isMobile(context) ? 'Type / to use custom tools' : 'Type / to use custom tools',
                                  ),
                                ),
                                Visibility(
                                  visible: viewModel.isMobile(context),
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
                          ),
                        ),
                        Container(
                          width: 125.mrp,
                          height: 60.mrp,
                          decoration: BoxDecoration(
                            color: const Color(0xFF4A39E4),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child:  Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Send',
                                style: TextStyle(
                                  color: Color(0xFF9EB2BF),
                                  fontSize: 20.mrp,
                                ),
                              ),
                              Icon(
                                Icons.send,
                                color: Colors.white,
                                size: 24.mrp,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
