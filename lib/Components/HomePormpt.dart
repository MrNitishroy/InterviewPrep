import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/ChatController.dart';

class HomePrompts extends StatelessWidget {
  final String title;
  final String prompt;
  const HomePrompts({super.key, required this.title, required this.prompt});

  @override
  Widget build(BuildContext context) {
    ChatController chatController = Get.put(ChatController());
    return InkWell(
      onTap: () {
        chatController.sendPrompt(prompt);
      },
      child: Container(
        width: context.width * 0.4,
        height: 50,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Theme.of(context).colorScheme.outline,
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
