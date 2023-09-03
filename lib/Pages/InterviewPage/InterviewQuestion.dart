import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/InterviewController.dart';

class InterviewQuestion extends StatelessWidget {
  const InterviewQuestion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    InterviewController interviewController = Get.put(InterviewController());
    return Container(
      width: context.width - 20,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.question_mark, size: 20, color: Colors.black),
          SizedBox(width: 10),
          Flexible(
            child: Text(
              interviewController.question.value,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
