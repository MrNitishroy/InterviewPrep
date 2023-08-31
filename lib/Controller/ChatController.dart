import 'dart:convert';
import 'package:chatgpt/Controller/FreeTTS.dart';
import 'package:chatgpt/Controller/SpeechToTextController.dart';
import 'package:chatgpt/Model/ChatModel.dart';
import 'package:chatgpt/PrivateData.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import "package:http/http.dart" as http;

import 'AITextToVoice.dart';

class ChatController extends GetxController {
  TextToScpeechController TTS = Get.put(TextToScpeechController());
  FreeTTSController freeTTSController = Get.put(FreeTTSController());

  TextEditingController message = TextEditingController();
  final RxList<ChatModel> chatData = <ChatModel>[
    ChatModel(message: "hello i am nitish kumar ", role: "user"),
    ChatModel(message: "hello i am nitish kumar ", role: "ai"),
  ].obs;
  RxBool isLoading = false.obs;
  int index = 0;

  void sendMessage() async {
    isLoading.value = true;
    Map<String, dynamic> body = {
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "user", "content": message.text}
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
    isLoading.value = false;

    if (response.statusCode == 200) {
      var AIData = jsonDecode(response.body);
      var text = AIData['choices'][0]['message']['content'];
      var newMessage = ChatModel(message: text, role: "ai");
      chatData.add(newMessage);
      // TTS.getTextToSpeech(text);
      freeTTSController.TTSConverter(text);
      print(AIData);
      print(AIData['choices'][0]['message']);
    }
  }

  void sendPrompt(String prompt) async {
    isLoading.value = true;
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
    isLoading.value = false;

    if (response.statusCode == 200) {
      var AIData = jsonDecode(response.body);
      var text = AIData['choices'][0]['message']['content'];
      var newMessage = ChatModel(message: text, role: "ai");
      chatData.add(newMessage);
      // TTS.getTextToSpeech(text);
      freeTTSController.TTSConverter(text);
      print(AIData);
      print(AIData['choices'][0]['message']);
    }
  }

  void AddMessageToList() {
    var newMessage = ChatModel(message: message.text, role: "user");
    if (message.text.isEmpty || isLoading.value) {
      print("Enter some Text");
    } else {
      chatData.add(newMessage);
      print("Message Added");
      sendMessage();
      message.clear();
    }
  }
}
