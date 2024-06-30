import 'package:book_store/core/Theme/AppColor.dart';
import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';

class CustomAbout extends StatelessWidget {
  final String Abook;
  final String Aauthor;
  const CustomAbout({super.key, required this.Abook, required this.Aauthor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const Text('About the Book',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'IbarraRealNova',
                color: AppColor.textColor)),
        const SizedBox(
          height: AppSizes.htext,
        ),
        Text(
          Abook,
          style: const TextStyle(
              color: AppColor.textColor,
              fontSize: 16,
              fontFamily: 'IbarraRealNova'),
        ),
        const SizedBox(height: AppSizes.gtext),
        const Text('About the Author',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'IbarraRealNova',
                color: AppColor.textColor)),
        const SizedBox(
          height: AppSizes.htext,
        ),
        Text(
          Aauthor,
          style: const TextStyle(
              color: AppColor.textColor,
              fontSize: 16,
              fontFamily: 'IbarraRealNova'),
        ),
       ]),
    );
  }
}
