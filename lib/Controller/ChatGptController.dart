import 'dart:convert';

import 'package:chatgpt/PrivateData.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;

class ChatGPTController extends GetxController {
  Future<String> sendQuary(String prompt) async {
    RxString responseText = "".obs;
    Map<String, dynamic> body = {
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "user", "content": prompt}
      ],
      "max_tokens": 500,
    };
    Uri uri = Uri.parse("https://api.openai.com/v1/chat/completions");
    final response = await http.post(
      uri,
      headers: {
        "Content-type": "application/json",
        "Authorization": "Bearer $OPENAIKEY"
      },
      body: json.encode(body),
    );

    if (response.statusCode == 200) {
      var AIData = jsonDecode(response.body);
      responseText.value = AIData['choices'][0]['message']['content'];
    }
    return responseText.value;
  }
}
