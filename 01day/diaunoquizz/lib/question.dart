class Question {
  Question({
    required this.title,
    required this.answers,
  });

  final String title;
  final List<Answer> answers;
}

class Answer {
  Answer({
    required this.title,
    required this.score,
  });

  final String title;
  final int score;
}
