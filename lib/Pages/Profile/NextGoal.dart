import 'package:chatgpt/Components/Home/PercentageIndicator.dart';
import 'package:chatgpt/Config/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextGoal extends StatelessWidget {
  final String? title;
  final int completeStatus;
  final int percent;
  const NextGoal({super.key, this.title, required this.percent, required this.completeStatus});

  @override
  Widget build(BuildContext context) {
    return  Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: greenColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            title!,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: greenColor),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "$completeStatus/10 You have Completed",
                          style: Theme.of(context).textTheme.headlineMedium,
                        )
                      ],
                    ),
                    HomePercentageIndicator(
                      percent: percent,
                    )
                  ],
                ),
              );
  }
}