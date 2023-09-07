import 'package:chatgpt/Components/Home/PercentageIndicator.dart';
import 'package:chatgpt/Controller/SentanceCorrect/SentanceController.dart';
import 'package:chatgpt/Model/SentanceCorrect.dart';
import 'package:chatgpt/Pages/SentanceCorrect/SentanceCorrect.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SentanceLevel extends StatelessWidget {
  final String title;
  final SentanceQuestion sentnaceQ;
  const SentanceLevel({
    super.key,
    required this.sentnaceQ,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title.toString()),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: sentnaceQ.SquestionLevel!
                .map(
                  (e) => InkWell(
                    onTap: () {
                      Get.to(SentanceCorrect(
                        sQuestionLevel: e,
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.checklist_outlined,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            e.level!,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
