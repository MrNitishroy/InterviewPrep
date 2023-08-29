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
    TextToScpeechController tts = Get.put(TextToScpeechController());
    FreeTTSController freeTTSController = Get.put(FreeTTSController());
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            // tts.getTextToSpeech("");
            freeTTSController.TTSConverter(
                "Java is a high-level programming language and JVM).");
          },
          child: Text("Call"),
        ),
      ),
    );
  }
}
