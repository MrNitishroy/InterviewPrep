import 'package:chatgpt/Components/Buttons/PrimaryButton.dart';
import 'package:chatgpt/Components/Buttons/SecondryButton.dart';
import 'package:chatgpt/Controller/PermissionController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class PermissionRequest extends StatelessWidget {
  const PermissionRequest({super.key});

  @override
  Widget build(BuildContext context) {
    PermissionController permissionController = Get.put(PermissionController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('Assets/Animation/audio.json', height: 300),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Permission Request",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 10),
            Text(
              "We need your permission to access your microphone and camera to record your interview",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SecondryButton(btnName: "😞 Deny", onPressed: () {}),
                SizedBox(width: 20),
                PrimaryButton(
                  btnName: "👍 Allow",
                  onPressed: () {
                    permissionController.cameraPermision();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
