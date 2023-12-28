import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/components/answer_button.dart';
//All the questions in the quiz
import 'package:quizapp/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.saveAnswer, {key}) : super(key: key);

  final Function(String answer) saveAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionScreen> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = allQuestions[questionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                currentQuestion.question,
                textAlign: TextAlign.center,
                style: GoogleFonts.abel(
                  fontSize: 26,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return Column(
                children: [
                  AnswerButton(() {
                    if (questionIndex != allQuestions.length - 1) {
                      answerQuestion();
                    }
                    widget.saveAnswer(answer);
                  }, answer),
                  const SizedBox(
                    height: 15,
                  )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
