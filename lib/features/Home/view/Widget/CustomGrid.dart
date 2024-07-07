import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CustomGrid extends StatelessWidget {
  final String ImgN;
  const CustomGrid({super.key, required this.ImgN});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          xs: 6,
          md: 3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.red,
            ),
            height: AppSizes.htC,
            width: AppSizes.wdC,
          
            child:  Column(
              children: [
                Image.asset(imgN)
              ]
            )
        )),
        // You can add more columns here
      ],
    );
  }
}
