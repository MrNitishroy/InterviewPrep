import 'package:chatgpt/Config/Colors.dart';
import 'package:chatgpt/Controller/AuthController.dart';
import 'package:chatgpt/Controller/ThemeController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          themeController.isDark.value
                              ? Image.asset(
                                  "Assets/Icons/AppIcons/darklogo.png",
                                  width: 150,
                                )
                              : Image.asset(
                                  "Assets/Icons/AppIcons/lightLogo.png",
                                  width: 150,
                                ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("INTERVIEW PREP",
                            style: Theme.of(context).textTheme.headlineLarge),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                            child: Text(
                          "Let's start prepare your interview with Interview Prep",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.labelMedium,
                        )),
                      ],
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Obx(
                      () => authController.isLoading.value
                          ? CircularProgressIndicator()
                          : InkWell(
                              onTap: () {
                                authController.signInWithGoogle();
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: Image.asset(
                                        "Assets/Icons/google.png",
                                        width: 30,
                                      )),
                                  Text(
                                    "Login With Google",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall,
                                  ),
                                  SizedBox(width: 1)
                                ],
                              ),
                            ),
                    ))
              ]),
        ),
      ),
    );
  }
}
