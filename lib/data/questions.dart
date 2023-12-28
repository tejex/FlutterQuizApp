import "package:quizapp/models/question.dart";

const allQuestions = [
  QuizQuestion("What is Flutter primarily used for?", [
    "Mobile app development",
    "Web development",
    "3D modeling",
    "Game development",
    "Just has 4"
  ]),
  QuizQuestion(
      "Who developed Flutter?", ["Google", "Apple", "Microsoft", "Facebook"]),
  QuizQuestion("Which programming language is used for Flutter development?",
      ["Dart", "JavaScript", "Kotlin", "Swift"]),
  QuizQuestion("What architectural pattern does Flutter primarily promote?", [
    "MVC (Model-View-Controller)",
    "MVP (Model-View-Presenter)",
    "MVVM (Model-View-ViewModel)",
    "BLoC (Business Logic Component)",
  ]),
  QuizQuestion("What type of apps can be developed with Flutter?", [
    "Android, iOS, web, and desktop apps",
    "Only Android apps",
    "Only iOS apps",
    "Only web apps",
  ])
];
