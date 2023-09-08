import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    LiquidController liquidController = LiquidController();
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            liquidController: liquidController,
            enableLoop: false,
            pages: [
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      'Assets/Animation/wel1.json',
                    ),
                    Text(
                      "You Can Prepare you interview",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 300,
                      child: Text(
                        "I you want to prepare you interview this app will help you very well",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: 70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "SLIDE LEFT",
                          style: TextStyle(
                            color: Colors.grey[400],
                            letterSpacing: 2,
                          ),
                        ),
                        SizedBox(width: 60)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xfffddcdf),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      'Assets/Animation/wel2.json',
                      height: 300,
                    ),
                    Text(
                      "Feel Like Original Interview",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 300,
                      child: Text(
                        "Here you have to speek all question infornt of the mobile",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: 70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "SLIDE LEFT",
                          style: TextStyle(
                            color: Colors.grey[400],
                            letterSpacing: 2,
                          ),
                        ),
                        SizedBox(width: 60)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xffFfdcbd),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 90),
                    Lottie.asset('Assets/Animation/logo.json', height: 300),
                    Text(
                      "Yap ! You are ready to GO",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 300,
                      child: Text(
                        "i hop you understand what happe inside the app",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: 70),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [],
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        // Get.offAllNamed("/googleLogin");
                        Get.offAllNamed("/authPage");
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "START",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 90),
                  ],
                ),
              ),
            ],
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          )
        ],
      ),
    );
  }
}
