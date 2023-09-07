import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chatgpt/Controller/AudioController.dart';
import 'package:chatgpt/Controller/DemoController.dart';
import 'package:chatgpt/Controller/FreeTTS.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/AITextToVoice.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    DemoController demoController = Get.put(DemoController());
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                label: Text("Call api"),
                icon: Icon(Icons.api),
                onPressed: () {
                  // demoController.getResult();
                  demoController.checkInternet();
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Obx(
            () => Text(
              "Response : ${demoController.response.value}",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
