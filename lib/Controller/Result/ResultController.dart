import 'dart:convert';

import 'package:chatgpt/Model/QuestionModel.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResultController extends GetxController {
  RxList<ListOfQuestion> userResponse = <ListOfQuestion>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("Result page init");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("Result page closed");
  }

  void setUserAnswer(String userAnswer, String question) {
    var newResponse = ListOfQuestion(
      question: question,
      userAnswer: userAnswer,
    );
    userResponse.add(newResponse);
    saveInLocalStoreage();
    print("Adding Response to db");
    print("Question: $question");
    print("User Response: $userAnswer");
  }

// save all data in local storage
  void saveInLocalStoreage() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonResponse =
        userResponse.map((e) => json.encode(e.toJson())).toList();
    prefs.setStringList("userAnswer", jsonResponse);
    print("Saved in storage");
  }

  void loadUserResponses() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonResponses = prefs.getStringList('userAnswer');
    if (jsonResponses != null) {
      userResponse.assignAll(
        jsonResponses.map(
          (jsonResponse) => ListOfQuestion.fromJson(
            json.decode(jsonResponse),
          ),
        ),
      );
    }
  }

  void clearStorage() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    print("Storage Cleared");
  }
}
