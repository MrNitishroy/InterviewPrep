import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondryButton extends StatelessWidget {
  final String btnName;
  final VoidCallback onPressed;
  const SecondryButton(
      {super.key, required this.btnName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(btnName),
      ),
    );
  }
}
