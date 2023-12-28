class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final List<String> shuffledList = List.of(this.answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
