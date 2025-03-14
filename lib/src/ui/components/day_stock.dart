import 'package:flutter/material.dart';
import 'package:tes/src/core/theme/colors/color_palette.dart';

class DayStockComponents extends StatelessWidget {
  const DayStockComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 312,
      height: 178,
      child: Column(
        children: [
          Container(
            width: 312,
            height: 87, // (178 - 4) / 2
            color: AppColor.main,
          ),
          SizedBox(height: 4), // gap
          Container(width: 312, height: 87, color: AppColor.error),
        ],
      ),
    );
  }
}
