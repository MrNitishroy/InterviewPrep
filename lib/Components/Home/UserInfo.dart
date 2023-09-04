import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Controller/AuthController.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return InkWell(
      onTap: () {
        Get.toNamed("/profile");
      },
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "Assets/Image/profile.png",
                    width: 70,
                    height: 70,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hi, ${authController.firstName.toString()}",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                color: Colors.white,
                                letterSpacing: 1.4,
                              ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Nice to",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "see you again",
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge
                              ?.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).colorScheme.outline,
                              ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            // SizedBox(height: 30),
            // TextFormField(
            //   decoration: InputDecoration(
            //     hintText: "Search here . . ",
            //     suffixIcon: InkWell(
            //       onTap: () {
            //         print("Tap on Search");
            //       },
            //       child: Image.asset("Assets/Icons/search.png"),
            //     ),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(40),
            //       borderSide: BorderSide.none,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
