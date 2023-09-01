import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/InterviewController.dart';

class InterviewAnswer extends StatelessWidget {
  const InterviewAnswer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    InterviewController interviewController = Get.put(InterviewController());
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.record_voice_over, size: 20, color: Colors.black),
          SizedBox(width: 10),
          Flexible(
              child: Obx(
            () => Text(
              interviewController.userAnswer.value,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
