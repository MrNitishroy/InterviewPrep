
class PromptModel {
  String? title;
  String? prompt;
  String? category;

  PromptModel({this.title, this.prompt, this.category});

  PromptModel.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    prompt = json["prompt"];
    category = json["category"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    _data["prompt"] = prompt;
    _data["category"] = category;
    return _data;
  }
}