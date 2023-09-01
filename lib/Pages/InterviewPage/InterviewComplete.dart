import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InterviewCompletePage extends StatelessWidget {
  const InterviewCompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          TextButton(
            onPressed: () {},
            child: Text("Your Interview is complete"),
          ),
        ],
      ),
    );
  }
}
