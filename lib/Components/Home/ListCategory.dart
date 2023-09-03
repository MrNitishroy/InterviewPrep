import 'package:chatgpt/Components/Home/PercentageIndicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Interview/MyPercentageIndicator.dart';

class InterviewCategory extends StatelessWidget {
  final String title;
  final String iconPath;
  final VoidCallback ontap;
  const InterviewCategory(
      {super.key,
      required this.title,
      required this.iconPath,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: SvgPicture.asset(
                    iconPath,
                    width: 30,
                    height: 30,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            // MyPercentageIndicator(
            //   percent: 100,
            //   fontSize: 15,
            //   lineWidth: 6,
            //   redius: 30,
            // ),

            HomePercentageIndicator(
              percent: 20,
            ),
          ],
        ),
      ),
    );
  }
}
