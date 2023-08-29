import 'package:chatgpt/Components/ChatMessage.dart';
import 'package:chatgpt/Components/TextArea.dart';
import 'package:chatgpt/Config/Colors.dart';
import 'package:chatgpt/Controller/ChatController.dart';
import 'package:chatgpt/Pages/demo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/MyDrawer.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    ChatController chatController = Get.put(ChatController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ChatGPT'),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Obx(
              () => Expanded(
                child: ListView(
                  children: chatController.chatData
                      .map(
                        (e) => ChatMessage(
                          message: e.message!,
                          sender: e.role!,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            TextArea(),
          ],
        ),
      ),
    );
  }
}
