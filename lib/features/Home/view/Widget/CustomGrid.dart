import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CustomGrid extends StatelessWidget {
  final String ImgN;
  final Function()? tap;
  const CustomGrid({super.key, required this.ImgN, this.tap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: tap,
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 12,
              
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                ),
                height: AppSizes.htC,
                width: AppSizes.wdC,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(ImgN, fit: BoxFit.cover),
                    const SizedBox(
                      height: AppSizes.htext,
                    ),
                    const Icon(Icons.favorite)
                  ],
                ),
              ),
            ),
            // You can add more columns here
          ],
        ),
      ),
    );
  }
}
