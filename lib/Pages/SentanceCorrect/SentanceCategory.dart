import 'package:chatgpt/Components/Home/PercentageIndicator.dart';
import 'package:chatgpt/Config/Data.dart';
import 'package:chatgpt/Pages/SentanceCorrect/LevelPage/SentanceLevel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SentanceCategory extends StatelessWidget {
  const SentanceCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                Text(
                  "Sentace correction",
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: sentanceQuestion
                  .map((e) => InkWell(
                        onTap: () {
                          Get.to(SentanceLevel(
                            sentnaceQ: e,
                            title: e.categoryTitle!,
                          ));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
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
                                e.categoryTitle.toString(),
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                              Spacer(),
                              HomePercentageIndicator(
                                percent: e.userScore!,
                              ),
                            ],
                          ),
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
