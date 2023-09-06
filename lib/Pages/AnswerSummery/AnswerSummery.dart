import 'package:chatgpt/Components/Buttons/PrimaryButton.dart';
import 'package:chatgpt/Components/Buttons/SecondryButton.dart';
import 'package:chatgpt/Components/Interview/MyPercentageIndicator.dart';
import 'package:chatgpt/Controller/Result/ResultController.dart';
import 'package:chatgpt/Pages/AnswerSummery/OverView.dart';
import 'package:chatgpt/Pages/AnswerSummery/QuestionTile.dart';
import 'package:chatgpt/Pages/HomePage/HomeData.dart';
import 'package:chatgpt/Pages/InterviewPage/InterviewComplete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AnswerSummery extends StatelessWidget {
  const AnswerSummery({super.key});

  @override
  Widget build(BuildContext context) {
    ResultController resultController = ResultController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              OverView(
                totalQuestion: 10,
                answeredQuestion: 7,
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Your answers",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Obx(
                () => Column(
                  children: resultController.userResponse.value
                      .map(
                        (e) => QuestionTile(
                          question: e.question!,
                          answer: e.userAnswer!,
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SecondryButton(
                    btnName: "try Again",
                    onPressed: () {
                      resultController.clearStorage();
                      Get.offAll(HomeData());
                    },
                  ),
                  SizedBox(width: 0),
                  PrimaryButton(
                    btnName: "Submit Answer",
                    onPressed: () {
                      // resultController.printUserResponse();
                      resultController.loadUserResponses();
                      // Get.to(InterviewCompletePage());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
