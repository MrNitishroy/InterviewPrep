import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/AITextToVoice.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    VoiceController voiceController = Get.put(VoiceController());
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            voiceController.TextToVoice();
          },
          child: Text("Call"),
        ),
      ),
    );
  }
}
