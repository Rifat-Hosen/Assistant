import 'package:assistant/index.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Assistant',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.turretRoad(
                      fontSize: 30.rp,
                      fontWeight: FontWeight.w900// Adaptive font size
                  ),
                ),
                const Gap(25),
                Container(
                  width: 200.rp,
                  height: 62.rp,
                  decoration: BoxDecoration(
                    color: const Color(0xFF4A39E4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child:  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.add_comment_rounded,
                        color: Colors.white,
                        size: 24.rp,
                      ),
                      Text(
                        'New Chat',
                        style: TextStyle(
                          fontSize: 20.rp,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) => buildChatContainer()),
                ),
              ],
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