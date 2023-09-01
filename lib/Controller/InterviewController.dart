import 'package:chatgpt/Controller/FreeTTS.dart';
import 'package:chatgpt/Model/QuestionModel.dart';
import 'package:chatgpt/Pages/InterviewPage/InterviewComplete.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class InterviewController extends GetxController {
  FreeTTSController freeTTSController = Get.put(FreeTTSController());
  late QuestionLevel questionLevel;

  TextEditingController userAnswer = TextEditingController(text: "adnmb as");
  RxString question = "".obs;
  RxBool isSpeeking = false.obs;
  RxInt count = 0.obs;
  RxInt index = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getFirstTimeQuestion();
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
  }

  void stopAndwering() {
    isSpeeking.value = false;
    getOneQuestion();
  }
}
