import 'package:chat_gpt_api/app/chat_gpt.dart';
import 'package:chatgpt/Controller/AuthController.dart';
import 'package:chatgpt/Pages/demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class PrimaryDrawer extends StatelessWidget {
  const PrimaryDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                onTap: () {
                  Get.toNamed("/profile");
                },
                title: Text("Nitish Kumar"),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "Assets/Image/profile2.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Divider(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              SizedBox(height: 10),
              ListTile(
                onTap: () {
                  Get.toNamed("/ChatPage");
                },
                leading: Icon(
                  Icons.chat_bubble_outline_rounded,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                title: Text(
                  "Chat GPT",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              ListTile(
                onTap: () {
                  // Get.toNamed("/ChatPage");
                },
                leading: Icon(
                  Icons.not_interested_outlined,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                title: Text(
                  "Correct or not",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              ListTile(
                onTap: () {
                  // Get.toNamed("/ChatPage");
                },
                leading: Icon(
                  Icons.check_box_outline_blank_sharp,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                title: Text(
                  "Muti Choise",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 10),
              Spacer(),
              Divider(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
              ),
              ListTile(
                onTap: () {
                  Get.to(DemoPage());
                },
                leading: Icon(
                  Icons.record_voice_over,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                title: Text(
                  "Disclaimer",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.privacy_tip_outlined,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                title: Text(
                  "Privacy Policy",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(
                  Icons.info_outline_rounded,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                title: Text(
                  "Terms and Conditions",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              ListTile(
                onTap: () {
                  authController.signOut();
                },
                leading: SvgPicture.asset(
                  "Assets/Icons/exit.svg",
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                  width: 20,
                ),
                title: Text(
                  "Logout",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
