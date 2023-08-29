import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/FreeTTS.dart';
import '../Controller/SpeechToTextController.dart';

class MicButton extends StatelessWidget {
  const MicButton({super.key});

  @override
  Widget build(BuildContext context) {
    STTController sttController = Get.put(STTController());
    FreeTTSController freeTTSController = Get.put(FreeTTSController());
    return Obx(
      () => sttController.isSpeeking.value
          ? IconButton(
              onPressed: () {
                sttController.stopListing();
              },
              icon: Icon(
                Icons.stop,
                color: Theme.of(context).colorScheme.primary,
              ),
            )
          : IconButton(
              onPressed: () {
                freeTTSController.flutterTts.stop();
                sttController.startListning();
              },
              icon: Icon(
                Icons.mic,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
    );
  }
}
