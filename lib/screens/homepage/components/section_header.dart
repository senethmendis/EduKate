import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.word1,
    required this.word2,
  });

  final String word1;
  final String word2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          word1,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          word2,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
