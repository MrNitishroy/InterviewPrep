import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Components/MyButton.dart';
import '../../Components/MyTextField.dart';
import '../../Components/PasswordField.dart';
import '../../Controller/AuthController.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
                "Create Acount 👍",
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
          MyTextField(
            controller: authController.SignupName,
            hintText: "Name",
            prefixIcon: Icons.person_4,
          ),
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
            bgColor: Theme.of(context).colorScheme.primary,
            iconPath: "Assets/Icons/lock.svg",
            text: "I AM NEW",
            ontap: () {
              authController.signupWithEmailAndPassword();
            },
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                bgColor: Colors.blue,
                iconPath: "Assets/Icons/google.svg",
                text: "GOOGLE",
                ontap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
