import 'package:book_store/core/Theme/AppAssets.dart';
import 'package:book_store/core/Theme/AppColor.dart';
import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppAssets.all),
        const SizedBox(
          height: AppSizes.sizecardes,
        ),
        const Text(
          'Your Book Library Make Your Own Space',
          style: TextStyle(
              color: AppColor.textColor,
              fontWeight: FontWeight.bold,
              fontSize: 34),
        ),
        SizedBox(height: AppSizes.htext),
        const Text(
          'Buy a best trending books here & manage your ebooks in your space. ',
          style: TextStyle(
            color: AppColor.textColor,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: "IbarraRealNova"
          ),
        )
      ],
    );
  }
}
