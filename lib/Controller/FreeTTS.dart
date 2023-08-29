import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FreeTTSController extends GetxController {
  RxBool isPlaying = false.obs;
  FlutterTts flutterTts = FlutterTts();

  void TTSConverter(String text) async {
    isPlaying.value = true;
    await flutterTts.setVolume(1);
    await flutterTts.setLanguage("en-IN");
    // await flutterTts.setVoice({"name": "Rishi", "locale": "en-IN"});
    // await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
    isPlaying.value = false;
  }
}
