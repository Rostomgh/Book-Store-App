import 'package:book_store/core/Theme/AppColor.dart';
import 'package:flutter/material.dart';

class CustomCategorie extends StatelessWidget {
  final String Category;
  const CustomCategorie({super.key, required this.Category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 141,
      height: 36,
      decoration: BoxDecoration(
        color: AppColor.backgroundCategory,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          color: AppColor.textColor,
          width: 1.0,
        )
      ),
      child:  Text(
          Category,
          style: const TextStyle(
            fontSize: 16, 
            color: AppColor.textColor,
            fontFamily: 'IbarraRealNova',
          ),

        
      ),

    );
  }
}