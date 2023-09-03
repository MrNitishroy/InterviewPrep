import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePercentageIndicator extends StatelessWidget {
  final int percent;
  const HomePercentageIndicator({super.key, required this.percent});

  @override
  Widget build(BuildContext context) {
    double percentValue = percent / 100.0;
    return CircularPercentIndicator(
      animation: true,
      animationDuration: 1000,
      radius: 25,
      lineWidth: 5,
      percent: 0.4,
      progressColor: Theme.of(context).colorScheme.primary,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      center: Text(
        "${percent}%",
        style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 10,
            fontWeight: FontWeight.bold),
      ),
      circularStrokeCap: CircularStrokeCap.round,
    );
  }
}
