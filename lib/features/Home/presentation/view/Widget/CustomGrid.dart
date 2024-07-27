import 'package:book_store/core/Theme/AppColor.dart';
import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class CustomGrid extends StatelessWidget {
  final String ImgN;
  final String title;
  final String author;
  final Function()? tap;

  const CustomGrid({
    super.key,
    required this.ImgN,
    required this.title,
    required this.author,
    this.tap,
  });

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
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.asset(
                        ImgN,
                        fit: BoxFit.cover,
                        width: 140,
                        height: 214,
                      ),
                    ),
                    const SizedBox(height: AppSizes.htext),
                    Text(
                      title,
                      style: const TextStyle(
                        color: AppColor.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      author,
                      style: const TextStyle(
                        color: AppColor.white,
                        fontSize: 14,
                      ),
                    ),
                    const Icon(
                      Icons.favorite_outline,
                      color: AppColor.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
