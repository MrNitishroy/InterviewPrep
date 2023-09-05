import 'package:avatar_glow/avatar_glow.dart';
import 'package:camera/camera.dart';
import 'package:chatgpt/Controller/CameraController.dart';
import 'package:chatgpt/Controller/Interview/InterviewController2.dart';
import 'package:chatgpt/Controller/InterviewController.dart';
import 'package:chatgpt/Pages/InterviewPage/widgets/CameraButton.dart';
import 'package:chatgpt/Pages/InterviewPage/widgets/CameraView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class InterviewPage2 extends StatelessWidget {
  const InterviewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    ICameraController iCameraController = Get.put(ICameraController());
    InterviewController interviewController = Get.put(InterviewController());
    InterviewController2 interviewController2 = Get.put(InterviewController2());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SafeArea(
          child: Stack(
            children: [
              // SizedBox(height: 20),

              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Obx(
                      () => interviewController.isSpeeking.value
                          ? Container(
                              // height: 120,
                              constraints: BoxConstraints(maxHeight: 120),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                    "Assets/Icons/question.svg",
                                    width: 20,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Flexible(
                                        child: Text(
                                          interviewController.userAnswer.value,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          : Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "Assets/Icons/question.svg",
                                    width: 20,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                  SizedBox(width: 10),
                                  Flexible(
                                    child: Text(
                                      interviewController.question.value,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                  )
                                ],
                              ),
                            ),
                    ),
                    SizedBox(height: 5),
                    Obx(
                      () => interviewController.isSpeeking.value
                          ? SizedBox(height: 0)
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "#Question ${interviewController.index}/${interviewController.totalQuestion.value}",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              const Align(
                alignment: Alignment.center,
                child: CameraView(),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // CameraButton(),
                    Obx(
                      () => interviewController.isSpeeking.value
                          ? AvatarGlow(
                              animate: true,
                              repeat: true,
                              duration: const Duration(milliseconds: 2000),
                              showTwoGlows: true,
                              endRadius: 60.0,
                              glowColor: Theme.of(context).colorScheme.primary,
                              child: Material(
                                elevation: 8.0,
                                shape: CircleBorder(),
                                child: IconButton(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  padding: EdgeInsets.all(20),
                                  onPressed: () {
                                    interviewController.stopAndwering();
                                  },
                                  icon: Icon(
                                    Icons.stop,
                                    size: 30,
                                  ),
                                ),
                              ),
                            )
                          : AvatarGlow(
                              animate: false,
                              repeat: true,
                              duration: const Duration(milliseconds: 2000),
                              showTwoGlows: true,
                              endRadius: 60.0,
                              glowColor: Theme.of(context).colorScheme.primary,
                              child: Material(
                                elevation: 8.0,
                                shape: CircleBorder(),
                                child: IconButton(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onBackground,
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                      Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  padding: EdgeInsets.all(20),
                                  onPressed: () {
                                    interviewController.giveAnswer();
                                  },
                                  icon: Icon(
                                    Icons.mic,
                                    size: 30,
                                  ),
                                ),
                              ),
                            ),
                    ),
                    // Container(
                    //   padding: EdgeInsets.all(10),
                    //   decoration: BoxDecoration(
                    //       color:
                    //           Theme.of(context).colorScheme.primaryContainer),
                    //   child: SvgPicture.asset(
                    //     "Assets/Icons/cameraoff.svg",
                    //     color: Theme.of(context).colorScheme.primary,
                    //     width: 30,
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
