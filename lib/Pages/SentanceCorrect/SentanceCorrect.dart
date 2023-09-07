import 'package:auto_size_text/auto_size_text.dart';
import 'package:chatgpt/Config/Colors.dart';
import 'package:chatgpt/Config/Data.dart';
import 'package:chatgpt/Controller/SentanceCorrect/SentanceController.dart';
import 'package:chatgpt/Model/SentanceCorrect.dart';
import 'package:chatgpt/Pages/SentanceCorrect/BottomButton.dart';
import 'package:chatgpt/Pages/SentanceCorrect/ResultPage/SentaceCorrectResult.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:swipe_cards/swipe_cards.dart';

class SentanceCorrect extends StatelessWidget {
  final SQuestionLevel sQuestionLevel;
  const SentanceCorrect({super.key, required this.sQuestionLevel});

  @override
  Widget build(BuildContext context) {
    SentanceController sentanceController = Get.put(SentanceController());
    sentanceController.questionLevel = sQuestionLevel;
    List<SwipeItem> swipeItems = sQuestionLevel.SlistOfQuestion!.map((e) {
      int fontSize = e.question!.length;
      fontSize = fontSize < 40 ? 40 : 30;
      return SwipeItem(
        content: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 20,
                offset: Offset(3, 8),
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.5),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "${e.question}",
                  style: TextStyle(
                    fontSize: fontSize.toDouble(),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "INTERVIEW PREP",
                      style: TextStyle(
                        letterSpacing: 1.3,
                        color: whiteColor.withOpacity(0.4),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();

    MatchEngine matchEngine = MatchEngine(swipeItems: swipeItems);
    return Scaffold(
      appBar: AppBar(
        title: Text("Sentence Check"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => Text(
                      "#Question ${sentanceController.index.value}/10",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  )
                ],
              ),
              SizedBox(height: 5),
              Obx(
                () => Slider(
                  activeColor: Theme.of(context).colorScheme.primary,
                  inactiveColor: Theme.of(context).colorScheme.primaryContainer,
                  divisions: 10,
                  value: sentanceController.index.value.toDouble(),
                  onChanged: (Value) {},
                  max: 10,
                  min: 0,
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 350,
                child: Expanded(
                  child: SwipeCards(
                    fillSpace: true,
                    leftSwipeAllowed: false,
                    upSwipeAllowed: false,
                    rightSwipeAllowed: false,
                    itemBuilder: (context, index) {
                      return swipeItems[index].content;
                    },
                    matchEngine: matchEngine,
                    onStackFinished: () {
                      Get.to(
                        SentaceCorrectResult(),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              LikeAndDislikeButton(
                dislikePress: () {
                  matchEngine.currentItem!.nope();
                  sentanceController.isUserCorrect.value = false;
                  sentanceController.giveAnswer();
                },
                likePress: () {
                  matchEngine.currentItem!.like();
                  sentanceController.isUserCorrect.value = true;
                  sentanceController.giveAnswer();
                },
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Given Sentence is correct or not if currect then press green button if wrong then press red button",
                  textAlign: TextAlign.center,
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
