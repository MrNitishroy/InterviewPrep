import 'package:chatgpt/Controller/AuthController.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      SizedBox(width: 20),
                      Text(
                        "New Session",
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "History",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {},
                      leading: SvgPicture.asset(
                        "Assets/Icons/message.svg",
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                      title: Text(
                        "This is my last message sjdhf sdfhsj ",
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              ListTile(
                trailing: IconButton(
                    onPressed: () {
                      authController.signOut();
                    },
                    icon: Icon(
                      Icons.settings,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    )),
                title: Text("Nitish Kumar"),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "Assets/Image/profile2.png",
                    width: 40,
                    height: 40,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
