import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class chat extends StatelessWidget {
  const chat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
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
}