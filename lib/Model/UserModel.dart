
class UserModel {
  String? userId;
  String? title;
  String? email;
  String? phoneNumber;
  String? profileUrl;
  int? totalScore;
  int? englishLevel;
  String? role;
  List<ActivityDate>? activityDate;

  UserModel({this.userId, this.title, this.email, this.phoneNumber, this.profileUrl, this.totalScore, this.englishLevel, this.role, this.activityDate});

  UserModel.fromJson(Map<String, dynamic> json) {
    if(json["userId"] is String) {
      userId = json["userId"];
    }
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["email"] is String) {
      email = json["email"];
    }
    if(json["phoneNumber"] is String) {
      phoneNumber = json["phoneNumber"];
    }
    if(json["profileUrl"] is String) {
      profileUrl = json["profileUrl"];
    }
    if(json["totalScore"] is int) {
      totalScore = json["totalScore"];
    }
    if(json["englishLevel"] is int) {
      englishLevel = json["englishLevel"];
    }
    if(json["role"] is String) {
      role = json["role"];
    }
    if(json["ActivityDate"] is List) {
      activityDate = json["ActivityDate"] == null ? null : (json["ActivityDate"] as List).map((e) => ActivityDate.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["userId"] = userId;
    _data["title"] = title;
    _data["email"] = email;
    _data["phoneNumber"] = phoneNumber;
    _data["profileUrl"] = profileUrl;
    _data["totalScore"] = totalScore;
    _data["englishLevel"] = englishLevel;
    _data["role"] = role;
    if(activityDate != null) {
      _data["ActivityDate"] = activityDate?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class ActivityDate {
  String? date;
  int? score;

  ActivityDate({this.date, this.score});

  ActivityDate.fromJson(Map<String, dynamic> json) {
    if(json["date"] is String) {
      date = json["date"];
    }
    if(json["score"] is int) {
      score = json["score"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["date"] = date;
    _data["score"] = score;
    return _data;
  }
}