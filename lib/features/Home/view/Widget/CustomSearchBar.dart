import 'package:book_store/core/Theme/AppColor.dart';
import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 368,
      height: 58,
      decoration: BoxDecoration(
        color: AppColor.containe,
        borderRadius: BorderRadius.circular(38),
        ),
        child: const Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Icon(
              Icons.search,
              color: AppColor.textColor,
            ),
            SizedBox(
              width: AppSizes.Bt2,
            ),
            Text(
              "Search",
              style: TextStyle(
                color: AppColor.textColor,
                fontSize: 20,
                fontFamily: 'IbarraRealNova',
            )),


    ]));
  }
}