import 'package:chatgpt/Components/Buttons/PrimaryButton.dart';
import 'package:chatgpt/Components/Buttons/SecondryButton.dart';
import 'package:chatgpt/Controller/SentanceCorrect/SentanceController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SentaceCorrectResult extends StatelessWidget {
  const SentaceCorrectResult({super.key});

  @override
  Widget build(BuildContext context) {
    SentanceController sentanceController = Get.put(SentanceController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          Text("Your Score is ${sentanceController.totalCorrectScore.value}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SecondryButton(
                  btnName: "Try Again",
                  onPressed: () {
                    Get.offAllNamed("/homePage");
                  }),
              PrimaryButton(
                  btnName: "Home",
                  onPressed: () {
                    Get.offAllNamed("/homePage");
                  }),
            ],
          )
        ]),
      ),
    );
  }
}
