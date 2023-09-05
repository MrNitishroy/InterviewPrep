import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuestionTile extends StatelessWidget {
  final String question;
  final String answer;
  const QuestionTile({
    super.key,
    this.question = "Loading. . . ",
    this.answer = "Loading. . . ",
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      childrenPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      leading: SvgPicture.asset(
        "Assets/Icons/question.svg",
        width: 20,
        color: Theme.of(context).colorScheme.primary,
      ),
      title: Text(
        question,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      children: [
        Row(
          children: [
            Flexible(
              child: Text(
                answer,
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
