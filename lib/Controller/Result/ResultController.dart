import 'package:chatgpt/Model/QuestionModel.dart';
import 'package:get/get.dart';

class ResultController extends GetxController {
  RxList<ListOfQuestion> userResponse = <ListOfQuestion>[
    ListOfQuestion(
      question: "Tell me about your self",
      userAnswer: "My name is nitish kumar",
    )
  ].obs;

  void setUserAnswer(String userAnswer, String question) {
    var newResponse = ListOfQuestion(
      question: question,
      userAnswer: userAnswer,
    );
    userResponse.add(newResponse);
    print("Adding Response to db");
    print("Question: $question");
    print("userResponse: $userAnswer");
  }
}
