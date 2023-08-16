import 'package:chatgpt/Components/ChatMessage.dart';
import 'package:chatgpt/Controller/ChatController.dart';
import 'package:chatgpt/Pages/demo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ChatGPT extends StatelessWidget {
  const ChatGPT({super.key});

  @override
  Widget build(BuildContext context) {
    ChatController chatController = Get.put(ChatController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(DemoPage());
          },
          icon: Icon(
            Icons.security,
          ),
        ),
        centerTitle: true,
        title: Text('ChatGPT'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Obx(
              () => Expanded(
                child: ListView(
                  // reverse: true,
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
            Container(
              decoration: BoxDecoration(
                // color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: chatController.message,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Have you any Question ?",
                      ),
                    ),
                  ),
                  Obx(
                    () => IconButton(
                      onPressed: () {
                        chatController.AddMessageToList();
                      },
                      icon: chatController.isLoading.value
                          ? Lottie.asset("Assets/Animation/loading.json",
                              width: 50)
                          : Icon(Icons.send),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
