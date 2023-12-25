class QuizQuestions {
  const QuizQuestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffleList() {
    final shuffleList = List.of(answers);
    return shuffleList;
  }
}
