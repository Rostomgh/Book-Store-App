import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CustomBgGrid extends StatelessWidget {
  const CustomBgGrid({super.key});

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
            //child:,
  ))]);}
}