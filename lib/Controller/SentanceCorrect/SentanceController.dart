import 'package:chatgpt/Model/SentanceCorrect.dart';
import 'package:get/get.dart';
import 'package:swipe_cards/swipe_cards.dart';

class SentanceController extends GetxController {
  RxInt totalCorrectScore = 0.obs;
  RxBool isUserCorrect = false.obs;
  RxInt index = 0.obs;
  RxInt lenghtOfQuestio = 0.obs;
  late SQuestionLevel questionLevel;

  void giveAnswer() {
    lenghtOfQuestio.value = questionLevel.SlistOfQuestion!.length;
    if (index < lenghtOfQuestio.value) {
      var sort = questionLevel.SlistOfQuestion![index.value];
      if (sort.isCorrect == isUserCorrect.value) {
        totalCorrectScore.value += 1;
      }
      index.value += 1;
      print("Your score is ${totalCorrectScore.value}");
    }
  }
}
