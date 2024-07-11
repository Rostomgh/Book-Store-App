import 'package:book_store/core/Theme/AppColor.dart';
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
              xs: 6,
              child: Container(
                height: AppSizes.htC,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                ),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(ImgN, fit: BoxFit.cover,width: 140,height: 214,  ),
                    ),
                    const SizedBox(
                      height: AppSizes.htext,
                      
                    ),
                    const Icon(Icons.favorite_outline,color: AppColor.white,)
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
