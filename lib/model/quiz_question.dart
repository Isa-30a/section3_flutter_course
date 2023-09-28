class QuizQuestion {
  const QuizQuestion(this.question, this.answers);
  final String question;
  final List<String> answers;

  List<String> getShuffledList() {
    final List<String> shuffledList = answers.toList();
    shuffledList.shuffle();
    return shuffledList;
  }
}
