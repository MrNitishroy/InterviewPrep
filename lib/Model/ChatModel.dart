class ChatModel {
  String? role;
  String? message;
  String? date;

  ChatModel({this.role, this.message, this.date});

  ChatModel.fromJson(Map<String, dynamic> json) {
    role = json["role"];
    message = json["message"];
    date = json["date"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["role"] = role;
    _data["message"] = message;
    _data["date"] = date;
    return _data;
  }
}
