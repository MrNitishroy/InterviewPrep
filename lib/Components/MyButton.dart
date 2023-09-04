import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback ontap;
  final Color bgColor;
  const MyButton(
      {super.key,
      required this.iconPath,
      required this.text,
      required this.ontap,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 20,
              color: Theme.of(context).colorScheme.onBackground,
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
