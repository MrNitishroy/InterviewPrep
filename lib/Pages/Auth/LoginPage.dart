import 'package:chatgpt/Components/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Components/MyTextField.dart';
import '../../Components/PasswordField.dart';
import '../../Controller/AuthController.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              Text(
                "Login 👍",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Flexible(
                child: Text(
                  "To use all features of the app you have to give some details ",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          SizedBox(height: 30),
          MyTextField(
            controller: authController.SignupEmail,
            hintText: "Email",
            prefixIcon: Icons.alternate_email_rounded,
          ),
          SizedBox(height: 30),
          MyPasswordField(
            controller: authController.SignupPwd,
          ),
          SizedBox(height: 30),
          MyButton(
            icon: Icons.rocket_launch,
            text: "I AM READY",
            ontap: () {},
          ),
          SizedBox(height: 120),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Forgot Password?",
                  style: Theme.of(context).textTheme.bodyMedium)
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                    "This is a Learning app where you can learn anything with best and best envirment ",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.labelMedium),
              )
            ],
          ),
        ],
      ),
    );
  }
}
