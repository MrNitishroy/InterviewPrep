import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class MyHeatMap extends StatelessWidget {
  final Map<DateTime, int>? datasets;
  const MyHeatMap({super.key, this.datasets});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HeatMap(
        datasets: datasets,
        colorMode: ColorMode.opacity,
        showText: false,
        scrollable: true,
        startDate: DateTime.now().subtract(
          const Duration(days: 365),
        ),
        endDate: DateTime.now(),
        colorTipCount: 4,
        defaultColor: Theme.of(context).colorScheme.primaryContainer,
        textColor: Theme.of(context).colorScheme.onPrimaryContainer,
        colorsets: {
          1: Color(0xff0CC800),
        },
      ),
    );
  }
}
