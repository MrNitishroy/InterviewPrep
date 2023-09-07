import 'dart:convert';

import 'package:chatgpt/Controller/ChatGptController.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DemoController extends GetxController {
  ChatGPTController chatGPTController = Get.put(ChatGPTController());
  RxString response = "Chat gpt reponse".obs;
  String userAnswer = '''
Q1 : Tell me about yourself
Answer : Good afternoon sir,
First of all,  Thank you for giving me this opportunity to introduce myself,which helps you to understand you clearly about me. My Name is Nitish kumar. Basically I am from Bihar but currently I'm staying in Bhopal. 
About my education so.I have completed my 10th and 12th Education form bihar,from childhood ii was more interested to learn about computer and Iot, that is ecarege me to pursue technical course,so now I am  Currently Pursuing B.tech in Electronic and Communication branch from Technocrats institute of technology Bhopal,
Coming to my skills and  Project that i have made, i have good knowledge in Web development using react as well as i have good knowledge in android developer.using Flutter , i have created 2 usefull project in Android development  first one is ChatGPT Base AI Interview Preparation app that will help user to prepare interview  and second one is Smart car parking system with Mobile application this project will provide organized parking environment.
Beyond of my academic and technical knowledge. I am interested in playing video game and learning new technology, I am really excited to start my career in your company where I can learn and enhance my skills.
That's all about me.
Q2: What is your long term goal and short term goal 
Answer : My short-term goal is to become financially independent.My long-term goal is to achieve the best position in a reputed company. Where I can build my career & help the organization.
Q3: Why should i hire you 
Answer : Being a fresher,I am searching  a platform where i can prove my best and i can improve my confidence and skill level, if you hire me then i will work hard and give my 100% effort to the organization 
Q4: What is your greatest strength and Weakness
Answer : My greatest strength is my paisong for continuous learning. I enjoy exploring new fields and new technology as well as being a self motivated person. My weakness is i am emotional person, i trust anyone easily
Q5: Are you willing to relocate
Answer : Yes, I am ready to relocate because I am basically from Bihar for study. I came to Bhopal so it is not a big deal for me and also I think I can learn many things about other cultures and we can get experience from different places.that is also good for my knowledge.
Q6: Tell me something about our Company 
Answer : As per my knowledge DXC technology is fast-growing, a well-reputed company in the market and employee-oriented and also your company provides lots of opportunity in future and well defined adaptable atmosphere.
Q7: Do you have any Question For me 
Answer : First of all thank you for your concern, yes I have a question for you.I would like to know the working environment of the company and your feedback about my interview.
''';

  void getResult() async {
    chatGPTController.sendQuary(userAnswer).then(
          (value) => {
            response.value = value,
          },
        );
  }

  void checkInternet() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      print("Connected with mobile");
    } else if (connectivityResult == ConnectivityResult.wifi) {
      print("Connected with Wifi");
    } else if (connectivityResult == ConnectivityResult.ethernet) {
      print("Connected with Ethernet");
    } else if (connectivityResult == ConnectivityResult.vpn) {
      // I am connected to a vpn network.
      // Note for iOS and macOS:
      print("Connected with VPN");
      // There is no separate network interface type for [vpn].
      // It returns [other] on any device (also simulator)
    } else if (connectivityResult == ConnectivityResult.bluetooth) {
      
      // I am connected to a bluetooth.
    } else if (connectivityResult == ConnectivityResult.other) {
      // I am connected to a network which is not in the above mentioned networks.
    } else if (connectivityResult == ConnectivityResult.none) {
      // I am not connected to any network.
    }
  }
}
