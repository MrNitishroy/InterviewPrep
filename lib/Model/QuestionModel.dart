
class QuestionModel {
  String? title;
  bool? isCompleted;
  List<QuestionLevel>? questionLevel;

  QuestionModel({this.title, this.isCompleted, this.questionLevel});

  QuestionModel.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    isCompleted = json["isCompleted"];
    questionLevel = json["questionLevel"] == null ? null : (json["questionLevel"] as List).map((e) => QuestionLevel.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    _data["isCompleted"] = isCompleted;
    if(questionLevel != null) {
      _data["questionLevel"] = questionLevel?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class QuestionLevel {
  String? level;
  bool? isCompeleted;
  int? totalScore;
  List<ListOfQuestion>? listOfQuestion;

  QuestionLevel({this.level, this.isCompeleted, this.totalScore, this.listOfQuestion});

  QuestionLevel.fromJson(Map<String, dynamic> json) {
    level = json["level"];
    isCompeleted = json["isCompeleted"];
    totalScore = json["totalScore"];
    listOfQuestion = json["listOfQuestion"] == null ? null : (json["listOfQuestion"] as List).map((e) => ListOfQuestion.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["level"] = level;
    _data["isCompeleted"] = isCompeleted;
    _data["totalScore"] = totalScore;
    if(listOfQuestion != null) {
      _data["listOfQuestion"] = listOfQuestion?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class ListOfQuestion {
  String? question;
  String? answer;
  String? userAnswer;

  ListOfQuestion({this.question, this.answer, this.userAnswer});

  ListOfQuestion.fromJson(Map<String, dynamic> json) {
    question = json["question"];
    answer = json["Answer"];
    userAnswer = json["userAnswer"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["question"] = question;
    _data["Answer"] = answer;
    _data["userAnswer"] = userAnswer;
    return _data;
  }
}