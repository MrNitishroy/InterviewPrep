import 'package:chatgpt/Controller/SpeechToTextController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/FreeTTS.dart';

class ListningButton extends StatelessWidget {
  const ListningButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    STTController sttController = Get.put(STTController());
    FreeTTSController freeTTSController = Get.put(FreeTTSController());
    return Obx(
      () => sttController.isSpeeking.value
          ? FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              onPressed: () {
                sttController.stopListing();
              },
              child: Icon(
                Icons.stop,
                color: Theme.of(context).colorScheme.primary,
              ),
            )
          : FloatingActionButton(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              onPressed: () {
                freeTTSController.flutterTts.stop();
                sttController.startListning();
              },
              child: Icon(
                Icons.mic,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
    );
  }
}
