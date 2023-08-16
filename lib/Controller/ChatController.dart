import 'dart:convert';
import 'package:chatgpt/Model/ChatModel.dart';
import 'package:chatgpt/PrivateData.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import "package:http/http.dart" as http;

class ChatController extends GetxController {
  final RxList<ChatModel> chatData = <ChatModel>[
    ChatModel(message: "hello i am nitish kumar ", role: "user"),
    ChatModel(message: "hello i am nitish kumar ", role: "ai"),
  ].obs;
  RxBool isLoading = false.obs;
  int index = 0;
  TextEditingController message = TextEditingController();

  void sendMessage() async {
    isLoading.value = true;
    Map<String, dynamic> body = {
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "user", "content": message.text}
        // {"role": "user", "content": "Hello!"}
      ],
      "max_tokens": 500,
    };
    Uri uri = Uri.parse("https://api.openai.com/v1/chat/completions");
    final response = await http.post(uri,
        headers: {
          "Content-type": "application/json",
          "Authorization": "Bearer $OPENAIKEY"
        },
        body: json.encode(body));
    isLoading.value = false;
    var AIData = jsonDecode(response.body);
    var newMessage = ChatModel(
        message: AIData['choices'][0]['message']['content'], role: "ai");
    chatData.add(newMessage);
    print(AIData);
    print(AIData['choices'][0]['message']);
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
