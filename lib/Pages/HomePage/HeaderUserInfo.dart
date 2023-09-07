import 'package:chatgpt/Controller/AuthController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderUserInfo extends StatelessWidget {
  final VoidCallback openDrawer;
  const HeaderUserInfo({super.key, required this.openDrawer});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Row(
      children: [
        InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  "Assets/Image/profile2.png",
                  width: 50,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello ✌️,",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(height: 4),
                  Text(
                    authController.user!.displayName!,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
