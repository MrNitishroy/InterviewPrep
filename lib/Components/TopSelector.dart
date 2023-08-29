import 'package:flutter/material.dart';

class TopSelector extends StatelessWidget {
  const TopSelector({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
                color: Theme.of(context).colorScheme.outline, width: 2),
          ),
          child: TabBar(
              splashBorderRadius: BorderRadius.circular(30),
              physics: const ClampingScrollPhysics(),
              labelColor: Theme.of(context).colorScheme.background,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
              indicator: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).colorScheme.primary,
              ),
              controller: _tabController,
              tabs: const [
                Tab(
                  text: "LOGIN",
                ),
                Tab(
                  text: "SIGNUP",
                ),
              ]),
        ),
      ],
    );
  }
}
