import 'package:chatgpt/Config/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LikeAndDislikeButton extends StatelessWidget {
  final VoidCallback likePress;
  final VoidCallback dislikePress;
  const LikeAndDislikeButton(
      {super.key, required this.likePress, required this.dislikePress});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          onTap: dislikePress,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: redColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: SvgPicture.asset("Assets/Icons/dislike.svg"),
          ),
        ),
        InkWell(
          onTap: likePress,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: greenColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: SvgPicture.asset("Assets/Icons/like.svg"),
          ),
        ),
      ],
    );
  }
}
