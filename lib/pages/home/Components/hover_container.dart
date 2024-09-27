import 'package:flutter/material.dart';

import '../index.dart';

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

    void hoverOut() {
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
              color: Colors.grey.withOpacity(0.5), // Shadow color with transparency
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        width: 185,
        height: 210,
        margin: const EdgeInsets.only(right: 10),
        child: Column(
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