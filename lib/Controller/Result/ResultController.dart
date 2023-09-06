import 'dart:convert';

import 'package:chatgpt/Controller/ChatGptController.dart';
import 'package:chatgpt/Model/QuestionModel.dart';
import 'package:chatgpt/PrivateData.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class ResultController extends GetxController {
  ChatGPTController chatGPTController = Get.put(ChatGPTController());
  RxList<ListOfQuestion> userResponse = <ListOfQuestion>[].obs;
  RxInt totalAnswerd = 0.obs;
  RxInt totalQuestion = 0.obs;
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
    if (userAnswer == "" ||
        userAnswer.contains("i don't know") ||
        userAnswer.contains("i don't have knowledge")) {
      return;
    } else {
      totalAnswerd.value += 1;
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

  void combineQandA() {
    // loadUserResponses();
    RxString cobined = "".obs;
    for (var i = 0; i < userResponse.length; i++) {
      cobined.value += "Q$i: ${userResponse[i].question}\n";
      cobined.value += "A: ${userResponse[i].userAnswer}\n";
    }
    print(cobined.value);
    // chatGPTController.sendQuary(cobined.value).then(
    //   (value) {
    //     print(value);
    //   },
    // );
  }

  void clearStorage() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    print("Storage Cleared");
  }
}
