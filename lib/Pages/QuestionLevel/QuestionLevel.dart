import 'package:chatgpt/Config/Private.dart';
import 'package:chatgpt/Model/QuestionModel.dart';
import 'package:chatgpt/Pages/InterviewPage/InterivewTips.dart';
import 'package:chatgpt/Pages/InterviewPage/Interview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionLevelPage extends StatelessWidget {
  final QuestionModel data;
  const QuestionLevelPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          data.title.toString(),
        ),
      ),
      body: Column(
        children: data.questionLevel!
            .map((e) => InkWell(
                  onTap: () {
                    Get.to(
                      InterviewTips(e: e),
                    );
                  },
                  child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          e.isCompeleted!
                              ? Icon(
                                  Icons.circle,
                                  size: 50,
                                  color: Theme.of(context).colorScheme.primary,
                                )
                              : Icon(
                                  Icons.circle_outlined,
                                  size: 50,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                          SizedBox(width: 10),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.level.toString(),
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              SizedBox(height: 5),
                              e.isCompeleted!
                                  ? Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "Your Score ${e.totalScore}",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ))
                                  : Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "Pendding",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall
                                            ?.copyWith(
                                              color: Colors.white,
                                            ),
                                      ),
                                    ),
                            ],
                          )),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          )
                        ],
                      )),
                ))
            .toList(),
      ),
    );
  }
}
