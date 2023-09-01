class QuestionAndOption {
  final String question;
  final List<String> options;

  const QuestionAndOption(
    this.question,
    this.options,
  );

  List<String> getShuffledAnswers() {
    List<String> shuffledList = List.from(options);
    shuffledList.shuffle();
    return shuffledList;
  }
}
