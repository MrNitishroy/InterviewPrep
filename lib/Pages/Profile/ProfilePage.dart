import 'package:chatgpt/Components/Home/PercentageIndicator.dart';
import 'package:chatgpt/Config/Colors.dart';
import 'package:chatgpt/Pages/Profile/HeatMap.dart';
import 'package:chatgpt/Pages/Profile/NextGoal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset(
                        "Assets/Icons/arrow.svg",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  Text(
                    "Profile",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 40,
                      height: 40,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SvgPicture.asset(
                        "Assets/Icons/setting.svg",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "Assets/Image/profile2.png",
                        width: 150,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Nitish kumar",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 6),
              Text(
                "Nitishr833@gmail.com",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: greenColor.withOpacity(0.2),
                        ),
                        child: SvgPicture.asset(
                          "Assets/Icons/coin.svg",
                          width: 20,
                          height: 20,
                          color: greenColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "740",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        "I Scores",
                        style: Theme.of(context).textTheme.labelSmall,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: oragngeColor.withOpacity(0.2),
                        ),
                        child: SvgPicture.asset(
                          "Assets/Icons/cap.svg",
                          width: 30,
                          height: 30,
                          color: oragngeColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "123",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        "Practice",
                        style: Theme.of(context).textTheme.labelSmall,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: blueColor.withOpacity(0.2),
                        ),
                        child: SvgPicture.asset(
                          "Assets/Icons/book.svg",
                          width: 30,
                          height: 30,
                          color: blueColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "100",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        "enrolled",
                        style: Theme.of(context).textTheme.labelSmall,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "Your Next Goal",
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
              SizedBox(height: 10),
              NextGoal(
                title: "HR Interview",
                percent: 30,
                completeStatus: 5,
              ),
              NextGoal(
                title: "Technical Interview",
                percent: 60,
                completeStatus: 5,
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "Activity",
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
              MyHeatMap(
                datasets: {
                  DateTime(2023, 8, 6): 3,
                  DateTime(2023, 8, 2): 7,
                  DateTime(2023, 8, 3): 10,
                  DateTime(2023, 8, 7): 8,
                  DateTime(2023, 8, 10): 1,
                  DateTime(2023, 8, 23): 2,
                  DateTime(2023, 8, 24): 3,
                  DateTime(2023, 8, 25): 4,
                  DateTime(2023, 8, 26): 5,
                  DateTime(2023, 8, 27): 7,
                  DateTime(2023, 8, 28): 6,
                  DateTime(2023, 8, 29): 8,
                  DateTime(2023, 8, 30): 12,
                  DateTime(2023, 8, 31): 6,
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
