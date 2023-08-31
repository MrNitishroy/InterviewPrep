import 'package:chatgpt/Model/QuestionModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  onTap: () {},
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Level 1 ",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              e.isCompeleted!
                                  ? Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 2),
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "Your Score 80%",
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
                                            .bodySmall,
                                      ),
                                    ),
                            ],
                          ),
                          Spacer(),
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
