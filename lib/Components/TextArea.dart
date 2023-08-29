import 'package:chatgpt/Components/MicButton.dart';
import 'package:chatgpt/Controller/ChatController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../Config/Colors.dart';

class TextArea extends StatelessWidget {
  const TextArea({super.key});

  @override
  Widget build(BuildContext context) {
    ChatController chatController = Get.put(ChatController());
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: TextFormField(
              maxLines: 5,
              minLines: 1,
              keyboardAppearance: Brightness.dark,
              keyboardType: TextInputType.multiline,
              controller: chatController.message,
              decoration: const InputDecoration(
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
                  ? Lottie.asset(
                      "Assets/Animation/loading.json",
                      width: 50,
                    )
                  : Icon(
                      Icons.send,
                      color: Theme.of(context).colorScheme.primary,
                    ),
            ),
          ),
          MicButton(),
        ],
      ),
    );
  }
}
