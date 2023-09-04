import 'package:carousel_slider/carousel_slider.dart';
import 'package:chatgpt/Components/Home/ListCategory.dart';
import 'package:chatgpt/Components/Home/UserInfo.dart';
import 'package:chatgpt/Components/PrimaryDrawer.dart';
import 'package:chatgpt/Config/Data.dart';
import 'package:chatgpt/Controller/HomeController.dart';
import 'package:chatgpt/Pages/HomePage/HeaderUserInfo.dart';
import 'package:chatgpt/Pages/QuestionLevel/QuestionLevel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeData extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    print("Open");
    scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());

    return Scaffold(
      drawer: PrimaryDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              HeaderUserInfo(
                openDrawer: openDrawer,
              ),
              SizedBox(height: 20),
              // UserInfo(),
              // SizedBox(height: 20),
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
              SizedBox(height: 10),
              Column(
                children: QuestionData.map(
                  (e) => InterviewCategory(
                    ontap: () {
                      Get.to(QuestionLevelPage(
                        data: e,
                      ));
                    },
                    title: e.title.toString(),
                    iconPath: "Assets/Icons/lock.svg",
                  ),
                ).toList(),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Tens Practice",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: tensQuestions
                    .map(
                      (e) => InterviewCategory(
                        ontap: () {
                          Get.to(QuestionLevelPage(
                            data: e,
                          ));
                        },
                        title: e.title.toString(),
                        iconPath: "Assets/Icons/lock.svg",
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
