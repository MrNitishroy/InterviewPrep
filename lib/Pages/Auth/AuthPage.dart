import 'package:chatgpt/Pages/Auth/LoginPage.dart';
import 'package:chatgpt/Pages/Auth/SignupPage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Components/TopSelector.dart';
import '../../Controller/AuthController.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 30),
                TopSelector(tabController: tabController),
                Expanded(
                    child: TabBarView(
                  dragStartBehavior: DragStartBehavior.start,
                  controller: tabController,
                  children: [
                    LoginPage(),
                    SignupPage(),
                  ],
                )),
              ],
            )),
      ),
    );
  }
}
