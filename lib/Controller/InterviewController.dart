import 'package:chatgpt/Controller/FreeTTS.dart';
import 'package:chatgpt/Controller/IVoiceToText.dart';
import 'package:chatgpt/Controller/Result/ResultController.dart';
import 'package:chatgpt/Model/QuestionModel.dart';
import 'package:chatgpt/Pages/AnswerSummery/AnswerSummery.dart';

import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

class InterviewController extends GetxController {
  FreeTTSController freeTTSController = Get.put(FreeTTSController());
  ResultController resultController = Get.put(ResultController());
  IVoiceToText iVoiceToText = Get.put(IVoiceToText());
  late QuestionLevel questionLevel;
  SpeechToText speechToText = SpeechToText();
  RxString userAnswer = "".obs;
  RxString question = "".obs;
  RxBool isSpeeking = false.obs;
  RxInt totalQuestion = 0.obs;
  RxInt count = 0.obs;
  RxInt index = 0.obs;

  RxBool questionLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    speechToText = SpeechToText();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    resultController.dispose();
  }

  void getOneQuestion() async {
    questionLoading.value = true;
    List<ListOfQuestion>? listOfQuestion = questionLevel.listOfQuestion;
    totalQuestion.value = listOfQuestion!.length;
    if (index.value == totalQuestion.value || count.value == 10) {
      // Get.to(InterviewCompletePage());
      resultController.saveInLocalStoreage();
      Get.to(AnswerSummery());
      return;
    }
    question.value = listOfQuestion[index.value].question!;
    freeTTSController.TTSConverter(question.value);
    print("Get new question =  $question");
    index.value += 1;
    count.value += 1;
    questionLoading.value = false;
  }

  void giveAnswer() {
    if (questionLoading.value == true) {
    } else {
      isSpeeking.value = true;
      startListning();
    }
  }

  void stopAndwering() {
    isSpeeking.value = false;
    resultController.setUserAnswer(userAnswer.value, question.value);
    userAnswer.value = "";
    getOneQuestion();
    speechToText.stop();
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
