import 'package:chatgpt/Controller/InterviewController.dart';
import 'package:chatgpt/Pages/InterviewPage/Interview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Model/QuestionModel.dart';

class InterviewTips extends StatelessWidget {
  final QuestionLevel e;
  const InterviewTips({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    InterviewController interviewController = Get.put(InterviewController());
    interviewController.questionLevel = e;
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Get.to(InterviewPage(e: e));
          },
          child: Text("I UNDESTAND GO TO INTERVIEW PAGE"),
        ),
      ),
    );
  }
}
