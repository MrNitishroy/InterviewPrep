import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class ChatMessage extends StatelessWidget {
  final String message;
  final String sender;
  const ChatMessage({super.key, required this.message, required this.sender});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green[50],
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: sender == "ai"
              ? SvgPicture.asset(
                  "Assets/Icons/chatgpt.svg",
                  width: 20,
                )
              : SvgPicture.asset(
                  "Assets/Icons/user.svg",
                  width: 20,
                ),
        ),
        SizedBox(width: 10),
        Expanded(
            child: Row(
          children: [
            Flexible(
              child: Text(message),
            ),
          ],
        ))
      ]),
    );
  }
}
