import 'package:chatgpt/Controller/TabController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MyNavController navController = Get.put(MyNavController());
    return Scaffold(
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(60),
              border: Border.all(
                color: Theme.of(context).colorScheme.outline,
              )),
          child: GNav(
            tabBackgroundColor: Theme.of(context).colorScheme.background,
            padding: EdgeInsets.all(10),
            haptic: true,
            activeColor: Theme.of(context).colorScheme.primary,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            onTabChange: (value) {
              navController.onTabChange(value);
            },
            selectedIndex: 0,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.heart_broken,
                text: 'Likes',
              ),
              GButton(
                icon: Icons.book,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ],
          ),
        ),
        body: Obx(
          () => navController.pages[navController.tabnumber.value],
        ));
  }
}
