import 'package:book_store/core/Theme/AppColor.dart';
import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final VoidCallback onpress;

  const CustomButton({
    required this.text,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.bar,
      width: 368,
      decoration: BoxDecoration(
        color: AppColor.ButColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: MaterialButton(
        onPressed: onpress,
        child: Text(
          text,
          style: const TextStyle(
            color: AppColor.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
