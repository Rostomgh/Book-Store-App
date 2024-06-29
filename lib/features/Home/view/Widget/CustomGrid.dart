import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CustomGrid extends StatelessWidget {
  const CustomGrid({super.key});

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
              color: Colors.orange,
            ),
            height: AppSizes.htC,
            width: AppSizes.wdC,
            alignment: Alignment.center,
            
            child: const Text("xs : 6 \r\nmd : 3"),
          ),
        ),
        // You can add more columns here
      ],
    );
  }
}
