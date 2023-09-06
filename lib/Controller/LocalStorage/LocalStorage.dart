import 'dart:convert';

import 'package:chatgpt/Model/QuestionModel.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageController extends GetxController {
  RxList<ListOfQuestion> userResponse = <ListOfQuestion>[].obs;

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
}
