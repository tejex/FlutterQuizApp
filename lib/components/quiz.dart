import 'package:flutter/material.dart';
import 'package:quizapp/components/questions_screen.dart';
import 'package:quizapp/components/results_screen.dart';
import 'package:quizapp/data/questions.dart';
import 'introComponent.dart';

class Quiz extends StatefulWidget {
  const Quiz({key}) : super(key: key);

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

//convention is to name the second class with the first classes name and State added to it
//here that results in the _QuizState name
class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  List<String> usersAnswers = [];

  void restartQuiz() {
    usersAnswers = [];
    setState(() {
      activeScreen = QuestionScreen(saveAnswer);
    });
  }

  void saveAnswer(String answer) {
    if (usersAnswers.length != allQuestions.length - 1) {
      usersAnswers.add(answer);
    } else {
      setState(() {
        activeScreen = ResultsScreen(usersAnswers, restartQuiz);
      });
    }
  }

  //can also use a ternary operator in the build method below instead of using initState()
  //can store the name of the current screen in a variable
  //and use a ternary to switch between the two screens
  @override
  void initState() {
    //we need to pass the changeScreens method to the child component
    //so it can trigger the screen change
    activeScreen = IntroComponent(changeScreens);
    super.initState();
  }

  void changeScreens() {
    setState(() {
      activeScreen = QuestionScreen(saveAnswer);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}
