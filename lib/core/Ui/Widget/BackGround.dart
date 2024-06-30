import 'package:book_store/core/Theme/AppAssets.dart';
import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final String imagePath;
  const BackGround({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.hpic,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AppAssets.BgBook), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Image.asset(imagePath,height: 336.29,width: 220,),
      ),
    );
  }
}
