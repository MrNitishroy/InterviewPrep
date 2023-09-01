import 'package:chatgpt/Controller/FreeTTS.dart';
import 'package:chatgpt/Controller/IVoiceToText.dart';
import 'package:chatgpt/Model/QuestionModel.dart';
import 'package:chatgpt/Pages/InterviewPage/InterviewComplete.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

class InterviewController extends GetxController {
  FreeTTSController freeTTSController = Get.put(FreeTTSController());
  IVoiceToText iVoiceToText = Get.put(IVoiceToText());
  late QuestionLevel questionLevel;
  SpeechToText speechToText = SpeechToText();
  RxString userAnswer = "".obs;
  RxString question = "".obs;
  RxBool isSpeeking = false.obs;
  RxInt count = 0.obs;
  RxInt index = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getFirstTimeQuestion();
    speechToText = SpeechToText();
  }

  void getFirstTimeQuestion() {
    Future.delayed(Duration(seconds: 2), () {
      getOneQuestion();
    });
  }

  void getOneQuestion() {
    List<ListOfQuestion>? listOfQuestion = questionLevel.listOfQuestion;
    if (index.value == listOfQuestion!.length || count.value == 10) {
      Get.to(InterviewCompletePage());
      return;
    }
    print("All Question");
    question.value = listOfQuestion![index.value].question!;
    freeTTSController.TTSConverter(question.value);
    print(question);
    index.value += 1;
    count.value += 1;
  }

  void giveAnswer() {
    isSpeeking.value = true;
    startListning();
  }

  void stopAndwering() {
    isSpeeking.value = false;
    getOneQuestion();
    speechToText.stop();
    userAnswer.value = "";
  }

  void startListning() async {
    print("Start Listing");
    bool avalible = await speechToText.initialize(
      onStatus: (val) {
        print(val);
      },
      onError: (val) {
        print(val);
      },
    );

    await speechToText.listen(
      listenFor: Duration(minutes: 5),
      onResult: (val) {
        print(val.recognizedWords);
        userAnswer.value = val.recognizedWords;
      },
    );
  }
}
