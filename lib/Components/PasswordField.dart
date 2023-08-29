import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/AuthController.dart';

class MyPasswordField extends StatelessWidget {
  final TextEditingController controller;
  const MyPasswordField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Obx(
      () => TextFormField(
        controller: controller,
        style: Theme.of(context).textTheme.bodyMedium,
        obscureText: authController.isSecure.value,
        decoration: InputDecoration(
          hintText: "Password",
          prefixIcon: Icon(Icons.lock),
          suffixIcon: InkWell(
            onTap: () {
              authController.isSecure.value =
                  authController.isSecure.value ? false : true;
            },
            child: authController.isSecure.value
                ? Icon(Icons.visibility)
                : Icon(Icons.visibility_off),
          ),
        ),
      ),
    );
  }
}
