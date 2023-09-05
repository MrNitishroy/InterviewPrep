import 'package:camera/camera.dart';
import 'package:chatgpt/Controller/CameraController.dart';
import 'package:chatgpt/Controller/Interview/InterviewController2.dart';
import 'package:chatgpt/Pages/InterviewPage/InterviewPage2.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    ICameraController iCameraController = Get.put(ICameraController());
    InterviewController2 interviewController2 = Get.put(InterviewController2());
    return Container(
      height: context.height * 0.6,
      width: context.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CameraPreview(iCameraController.cameraController),
      ),
    );
  }
}
