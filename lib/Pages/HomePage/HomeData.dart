import 'package:carousel_slider/carousel_slider.dart';
import 'package:chatgpt/Components/Home/UserInfo.dart';
import 'package:chatgpt/Controller/AuthController.dart';
import 'package:chatgpt/Controller/HomeController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeData extends StatelessWidget {
  const HomeData({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 20),
            UserInfo(),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Featurs post",
                  style: Theme.of(context).textTheme.labelMedium,
                )
              ],
            ),
            CarouselSlider(
              items: homeController.slideItem,
              options: CarouselOptions(
                height: 140,
                aspectRatio: 16 / 9,
                viewportFraction: 0.9,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 6),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (page, pagename) {},
                scrollDirection: Axis.vertical,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Prepare Speeking",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
