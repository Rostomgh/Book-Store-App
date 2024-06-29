import 'package:book_store/core/Theme/AppAssets.dart';
import 'package:flutter/material.dart';

class CustomBackGroundImg extends StatelessWidget {
  final Widget child;
  const CustomBackGroundImg({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage((AppAssets.ImgBG)),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
        );
  }
}
