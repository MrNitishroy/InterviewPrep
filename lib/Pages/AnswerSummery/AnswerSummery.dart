import 'package:chatgpt/Components/Buttons/PrimaryButton.dart';
import 'package:chatgpt/Components/Buttons/SecondryButton.dart';
import 'package:chatgpt/Components/Interview/MyPercentageIndicator.dart';
import 'package:chatgpt/Config/Colors.dart';
import 'package:chatgpt/Controller/InterviewController.dart';
import 'package:chatgpt/Controller/LocalStorage/LocalStorage.dart';
import 'package:chatgpt/Controller/Result/ResultController.dart';
import 'package:chatgpt/Pages/AnswerSummery/OverView.dart';
import 'package:chatgpt/Pages/AnswerSummery/QuestionTile.dart';
import 'package:chatgpt/Pages/HomePage/HomeData.dart';
import 'package:chatgpt/Pages/InterviewPage/InterviewComplete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

class AnswerSummery extends StatelessWidget {
  const AnswerSummery({super.key});

  @override
  Widget build(BuildContext context) {
    ResultController resultController = Get.put(ResultController());
    InterviewController interviewController = Get.put(InterviewController());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Review your Answers",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                OverView(
                  totalQuestion: interviewController.totalQuestion.value,
                  answeredQuestion: resultController.totalAnswerd.value,
                ),
                SizedBox(height: 20),
                resultController.totalAnswerd.value == 0
                    ? Column(
                        children: [
                          SizedBox(height: 40),
                          SvgPicture.asset(
                            "Assets/Icons/empty.svg",
                            width: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "You have not given any answer yet",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      )
                    : Row(
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
                    resultController.totalAnswerd == 0
                        ? PrimaryButton(
                            btnName: "Home",
                            onPressed: () {
                              Get.offAllNamed("/homePage");
                            },
                          )
                        : PrimaryButton(
                            btnName: "Submit Answer",
                            onPressed: () {
                              Get.to(InterviewCompletePage());
                            },
                          ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
