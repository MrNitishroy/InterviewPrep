import 'package:chatgpt/Controller/FreeTTS.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ChatMessage extends StatelessWidget {
  final String message;
  final String sender;
  const ChatMessage({super.key, required this.message, required this.sender});

  @override
  Widget build(BuildContext context) {
    FreeTTSController freeTTSController = Get.put(FreeTTSController());
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  child: Text(
                    message,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ))
          ]),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  freeTTSController.TTSConverter(message);
                },
                child: Image.asset(
                  "Assets/Icons/play.png",
                  width: 10,
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () {
                  freeTTSController.flutterTts.pause();
                },
                child: Image.asset(
                  "Assets/Icons/pause.png",
                  width: 10,
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () {
                  freeTTSController.flutterTts.stop();
                },
                child: Image.asset(
                  "Assets/Icons/stop.png",
                  width: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
