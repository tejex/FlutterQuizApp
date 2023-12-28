import 'dart:ffi';
import 'package:flutter/material.dart';

class QuizResults extends StatelessWidget {
  const QuizResults(this.quizSummary, {key}) : super(key: key);

  final List<Map<String, Object>> quizSummary;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: quizSummary.map((question) {
            return Row(
              children: [
                Text(((question['questionID'] as int) + 1).toString(),
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w600)),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(question['question'] as String,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(question['userAnswer'] as String,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(question['actualAnswer'] as String,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600))
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
