import 'package:chatgpt/Controller/Interview/InterviewController2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CameraButton extends StatelessWidget {
  const CameraButton({super.key});

  @override
  Widget build(BuildContext context) {
    InterviewController2 interviewController2 = InterviewController2();
    return InkWell(
      onTap: () {
        interviewController2.cameraOnOff();
      },
      child: Obx(
        () => Container(
          width: 50,
          height: 50,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: interviewController2.isCameraOpen.value
                ? Theme.of(context).colorScheme.primaryContainer
                : null,
            borderRadius: BorderRadius.circular(100),
          ),
          child: SvgPicture.asset(
            interviewController2.isCameraOpen.value
                ? "Assets/Icons/cameraoff.svg"
                : "Assets/Icons/cameraon.svg",
            color: interviewController2.isCameraOpen.value
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.onPrimaryContainer,
            width: 30,
          ),
        ),
      ),
    );
  }
}
