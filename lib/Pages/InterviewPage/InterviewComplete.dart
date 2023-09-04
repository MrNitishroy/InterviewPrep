import 'dart:math';

import 'package:chatgpt/Components/Buttons/PrimaryButton.dart';
import 'package:chatgpt/Components/Buttons/SecondryButton.dart';
import 'package:chatgpt/Components/Interview/MyPercentageIndicator.dart';
import 'package:chatgpt/Controller/Result/ConflitController.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class InterviewCompletePage extends StatelessWidget {
  const InterviewCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    MyConflitController conflitController = Get.put(MyConflitController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "HR Interview",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Level 1 - Simple Question",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "You have Attended all the questions in this level",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        SizedBox(height: 20),
                        MyPercentageIndicator(
                          percent: 100,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "❤️ Congratulations !",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.green,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SecondryButton(
                        btnName: "😞 Try Again",
                        onPressed: () {},
                      ),
                      SizedBox(width: 20),
                      PrimaryButton(
                        btnName: "👍 Home",
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: ConfettiWidget(
                confettiController: conflitController.controller,
                shouldLoop: false,
                blastDirection: -pi / 2,
                colors: const [
                  Color(0xff0CC800),
                  Color(0xffFFD562),
                  Color(0xff0F6DFB),
                  Colors.red,
                  Colors.pink,
                ],
                gravity: 0.4,
                emissionFrequency: 0.1,
                blastDirectionality: BlastDirectionality.explosive,
                maxBlastForce: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
