import 'package:chatgpt/Controller/ChatController.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

class STTController extends GetxController {
  ChatController chatController = Get.put(ChatController());
  RxBool isSpeeking = false.obs;
  SpeechToText speechToText = SpeechToText();
  RxString text = "".obs;
  @override
  void onInit() async {
    super.onInit();
    speechToText = SpeechToText();
  }

  void startListning() async {
    if (!isSpeeking.value) {
      bool avalible = await speechToText.initialize(
        onStatus: (val) {
          print(val);
        },
        onError: (val) {
          print(val);
        },
      );

      if (!isSpeeking.value) {
        await speechToText.listen(
          listenFor: Duration(minutes: 5),
          onResult: (val) {
            print(val.recognizedWords);
            text.value = val.recognizedWords;
            chatController.message.text = text.value;
          },
        );
        isSpeeking.value = true;
      }
    }
  }

  void stopListing() async {
    isSpeeking.value = false;
    speechToText.stop();
  }
}
