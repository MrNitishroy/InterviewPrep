import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var slideItem = [
    Container(
      decoration: BoxDecoration(
        // color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset("Assets/Image/slide1.png"),
    ),
    Container(
      decoration: BoxDecoration(
        // color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset("Assets/Image/slide2.png"),
    ),
    Container(
      decoration: BoxDecoration(
        // color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset("Assets/Image/slide3.png"),
    ),
  ];
}
