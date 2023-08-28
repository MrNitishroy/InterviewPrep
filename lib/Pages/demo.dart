import 'package:chatgpt/Controller/AudioController.dart';
import 'package:chatgpt/Controller/DemoController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/AITextToVoice.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextToScpeechController tts = Get.put(TextToScpeechController());
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            tts.getTextToSpeech(
                "Java is a high-level programming language and computing platform developed by Oracle. It is widely used for developing desktop, web, and mobile applications, as well as embedded systems and enterprise solutions. Java is known for its write once, run anywhere (WORA) approach, which means that Java code can run on different platforms without the need for recompilation. It is also object-oriented, with features such as inheritance, encapsulation, and polymorphism. Java applications are typically compiled into bytecode that can be executed by the Java Virtual Machine (JVM).");
          },
          child: Text("Call"),
        ),
      ),
    );
  }
}
