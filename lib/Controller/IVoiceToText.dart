import 'package:chatgpt/Controller/InterviewController.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

class IVoiceToText extends GetxController {
  InterviewController interviewController = Get.put(InterviewController());
  RxBool isSpeeking = false.obs;
  SpeechToText speechToText = SpeechToText();

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
            interviewController.userAnswer.text = val.recognizedWords;
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
