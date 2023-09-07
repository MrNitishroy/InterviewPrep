class SentanceQuestion {
  String? categoryTitle;
  bool? isCompleted;
  int? totalScore;
  int? userScore;
  List<SQuestionLevel>? SquestionLevel;

  SentanceQuestion(
      {this.categoryTitle,
      this.isCompleted,
      this.totalScore,
      this.userScore,
      this.SquestionLevel});

  SentanceQuestion.fromJson(Map<String, dynamic> json) {
    categoryTitle = json["CategoryTitle"];
    isCompleted = json["isCompleted"];
    totalScore = json["totalScore"];
    userScore = json["userScore"];
    SquestionLevel = json["SQuestionLevel"] == null
        ? null
        : (json["SQuestionLevel"] as List)
            .map((e) => SQuestionLevel.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["CategoryTitle"] = categoryTitle;
    _data["isCompleted"] = isCompleted;
    _data["totalScore"] = totalScore;
    _data["userScore"] = userScore;
    if (SquestionLevel != null) {
      _data["SQuestionLevel"] = SquestionLevel?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class SQuestionLevel {
  String? level;
  int? totalScore;
  int? userScore;
  bool? isCompleted;
  List<SListOfQuestion>? SlistOfQuestion;

  SQuestionLevel(
      {this.level,
      this.totalScore,
      this.userScore,
      this.isCompleted,
      this.SlistOfQuestion});

  SQuestionLevel.fromJson(Map<String, dynamic> json) {
    level = json["level"];
    totalScore = json["totalScore"];
    userScore = json["userScore"];
    isCompleted = json["isCompleted"];
    SlistOfQuestion = json["SListOfQuestion"] == null
        ? null
        : (json["SListOfQuestion"] as List)
            .map((e) => SListOfQuestion.fromJson(e))
            .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["level"] = level;
    _data["totalScore"] = totalScore;
    _data["userScore"] = userScore;
    _data["isCompleted"] = isCompleted;
    if (SlistOfQuestion != null) {
      _data["SListOfQuestion"] =
          SlistOfQuestion?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class SListOfQuestion {
  String? question;
  String? answer;
  bool? isCorrect;

  SListOfQuestion({this.question, this.answer, this.isCorrect});

  SListOfQuestion.fromJson(Map<String, dynamic> json) {
    question = json["question"];
    answer = json["answer"];
    isCorrect = json["isCorrect"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["question"] = question;
    _data["answer"] = answer;
    _data["isCorrect"] = isCorrect;
    return _data;
  }
}
