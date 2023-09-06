import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class OverView extends StatelessWidget {
  final int totalQuestion;
  final int answeredQuestion;
  const OverView(
      {super.key, required this.totalQuestion, required this.answeredQuestion});

  @override
  Widget build(BuildContext context) {
    double percentValue = answeredQuestion / totalQuestion;
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          CircularPercentIndicator(
            animation: true,
            circularStrokeCap: CircularStrokeCap.round,
            radius: 50,
            percent: percentValue,
            lineWidth: 8,
            progressColor: Theme.of(context).colorScheme.primary,
            backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
            center: Text(
              "$answeredQuestion/$totalQuestion",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          SizedBox(width: 20),
          Flexible(
            child: Text(
              "You have answered $answeredQuestion out of $totalQuestion questions",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          )
        ],
      ),
    );
  }
}
