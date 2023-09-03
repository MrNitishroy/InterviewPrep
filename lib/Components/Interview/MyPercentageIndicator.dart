import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyPercentageIndicator extends StatelessWidget {
  final int percent;
  final int redius;
  final int lineWidth;
  final double fontSize;

  const MyPercentageIndicator(
      {super.key,
      required this.percent,
      this.redius = 120,
      this.lineWidth = 30,
      this.fontSize = 40});

  @override
  Widget build(BuildContext context) {
    double percentValue = percent / 100.0;
    return CircularPercentIndicator(
      animation: true,
      animationDuration: 2000,
      radius: redius.toDouble(),
      lineWidth: lineWidth.toDouble(),
      percent: percentValue,
      progressColor: Theme.of(context).colorScheme.primary,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      center: Text(
        "${percent}%",
        style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: fontSize,
            fontWeight: FontWeight.bold),
      ),
      circularStrokeCap: CircularStrokeCap.round,
    );
  }
}
