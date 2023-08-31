import 'package:chatgpt/Components/ChatMessage.dart';
import 'package:chatgpt/Components/HomePormpt.dart';
import 'package:chatgpt/Components/TextArea.dart';
import 'package:chatgpt/Config/Colors.dart';
import 'package:chatgpt/Config/Data.dart';
import 'package:chatgpt/Controller/ChatController.dart';
import 'package:chatgpt/Controller/ThemeController.dart';
import 'package:chatgpt/Pages/demo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Components/MyDrawer.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    ChatController chatController = Get.put(ChatController());
    ThemeController themeController = Get.put(ThemeController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ChatGPT'),
        actions: [
          IconButton(
            onPressed: () {
              themeController.changeTheme();
            },
            icon: themeController.isDark.value
                ? Icon(
                    Icons.sunny,
                    color: Theme.of(context).colorScheme.primary,
                  )
                : Icon(
                    Icons.dark_mode_rounded,
                    color: Theme.of(context).colorScheme.primary,
                  ),
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: conversetionPrompt
                  .map(
                    (e) => HomePrompts(
                      prompt: e.prompt.toString(),
                      title: e.title.toString(),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 10),
            Divider(
              color: Theme.of(context).colorScheme.outline,
              thickness: 2,
            ),
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
