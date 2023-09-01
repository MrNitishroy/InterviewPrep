import 'package:chatgpt/Controller/InterviewController.dart';
import 'package:chatgpt/Model/QuestionModel.dart';
import 'package:chatgpt/Pages/InterviewPage/InterviewQuestion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Answer.dart';

class InterviewPage extends StatelessWidget {
  final QuestionLevel e;
  const InterviewPage({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    InterviewController interviewController = Get.put(InterviewController());
    interviewController.questionLevel = e;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Obx(
        () => interviewController.isSpeeking.value
            ? InkWell(
                onTap: () {
                  interviewController.stopAndwering();
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(
                    Icons.stop,
                    size: 30,
                  ),
                ),
              )
            : InkWell(
                onTap: () {
                  interviewController.giveAnswer();
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(100)),
                  child: Icon(
                    Icons.mic,
                    size: 30,
                  ),
                ),
              ),
      ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: Colors.grey,
          ),
          Positioned(
            top: 20,
            child: Container(
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Obx(
                () => Text(
                  "${interviewController.index.value}/10",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            child: Container(
              width: context.width - 20,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Obx(
                () => interviewController.isSpeeking.value
                    ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.record_voice_over,
                              size: 20, color: Colors.black),
                          SizedBox(width: 10),
                          Flexible(
                            child: Text(
                              "I name is nitish kumar my fater name is surendra prasad i have complete my 10th and 12th ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Icon(Icons.question_mark,
                              size: 20, color: Colors.black),
                          SizedBox(width: 10),
                          Text(
                            interviewController.question.value,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
