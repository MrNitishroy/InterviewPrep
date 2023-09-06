import 'package:chatgpt/Components/BackButton.dart';
import 'package:chatgpt/Config/Colors.dart';
import 'package:chatgpt/Controller/CameraController.dart';
import 'package:chatgpt/Controller/InterviewController.dart';
import 'package:chatgpt/Pages/InterviewPage/InterviewPage2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../Model/QuestionModel.dart';

class InterviewTips extends StatelessWidget {
  final QuestionLevel e;
  const InterviewTips({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    InterviewController interviewController = Get.put(InterviewController());
    ICameraController cameraController =
        Get.put(ICameraController()); // dont remove this line
    interviewController.questionLevel = e;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          Row(
            children: [
              MyBackButton(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "Assets/Image/sitting.png",
                width: context.width * 0.7,
              ),
            ],
          ),
          SizedBox(height: 30),
          Text(
            "Things to keep in mind",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SvgPicture.asset(
                "Assets/Icons/check.svg",
                width: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: 10),
              Text(
                "Prepare you self for the interview",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SvgPicture.asset(
                "Assets/Icons/check.svg",
                width: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: 10),
              Text(
                "All Question are related to your profile",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SvgPicture.asset(
                "Assets/Icons/check.svg",
                width: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: 10),
              Text(
                "Keep straight and look at the camera",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SvgPicture.asset(
                "Assets/Icons/check.svg",
                width: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: 10),
              Text(
                "Keep your background clean and tidy",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              SvgPicture.asset(
                "Assets/Icons/check.svg",
                width: 20,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: 10),
              Text(
                "Keep your phone on silent mode",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          Spacer(),
          InkWell(
            onTap: () {
              interviewController.getOneQuestion();
              // Get.to(InterviewPage(e: e));
              Get.to(InterviewPage2());
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "I AM READY",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontWeight: FontWeight.bold, color: whiteColor),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
