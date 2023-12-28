import 'package:flutter/material.dart';
import 'package:quizapp/components/quizResults.dart';
import 'package:quizapp/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen(this.userResults, this.restartQuiz, {key}) : super(key: key);

  final List<String> userResults;
  int correctAnswers = 0;

  final void Function() restartQuiz;

  List<Map<String, Object>> getQuizSummary() {
    final List<Map<String, Object>> quizSummary = [];
    for (var i = 0; i < userResults.length; i++) {
      quizSummary.add({
        'questionID': i,
        'question': allQuestions[i].question,
        'userAnswer': userResults[i],
        'actualAnswer': allQuestions[i].answers[0],
      });
    }
    for (var i = 0; i < userResults.length; i++) {
      if (quizSummary[i]['userAnswer'] == quizSummary[i]['actualAnswer']) {
        correctAnswers++;
      }
      correctAnswers.toString();
    }
    return quizSummary;
  }

  @override
  Widget build(context) {
    List<Map<String, Object>> quizResults = getQuizSummary();

    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "You Answered $correctAnswers out of ${userResults.length} Questions Correctly",
              style: TextStyle(fontSize: 20, foreground: Paint()),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 25,
            ),
            QuizResults(quizResults),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.replay_outlined),
              onPressed: () {
                restartQuiz();
              },
              label: const Text("Retake Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
