import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AssistaintDetailsContainer extends StatelessWidget {
  const AssistaintDetailsContainer({
    super.key,
    required this.icon_name,
    required this.name,
    required this.isSelect,
    required this.description,
    required this.ispro,
  });

  final String icon_name;
  final String name;
  final bool isSelect;
  final String description;
  final bool ispro;

  @override
  Widget build(BuildContext context) {
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