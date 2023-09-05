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
    TextToScpeechController tts = Get.put(TextToScpeechController());
    FreeTTSController freeTTSController = Get.put(FreeTTSController());
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'Hello my name is nitish kumar ',
                textStyle: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 10),
              ),
            ],
            totalRepeatCount: 100,
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ],
      ),
    );
  }
}
