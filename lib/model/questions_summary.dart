import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<String> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData
          .map(
            (data) => Row(
              children: [
                Text(data),
              ],
            ),
          )
          .toList(),
    );
  }
}
