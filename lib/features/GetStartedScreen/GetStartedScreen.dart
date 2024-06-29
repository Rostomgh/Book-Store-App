import 'package:book_store/core/Theme/AppAssets.dart';
import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:book_store/features/GetStartedScreen/Widget/BuildCards.dart';
import 'package:book_store/features/GetStartedScreen/Widget/CustomBackgroundImage.dart';
import 'package:book_store/features/GetStartedScreen/Widget/CustomButton.dart';
import 'package:flutter/material.dart';

class GetStartedP extends StatelessWidget {
  const GetStartedP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomBackGroundImg(
      child: Column(children: [
        Image.asset(AppAssets.ImgBG2),
        const SizedBox(
          height: AppSizes.Bg,
        ),
        const MyWidget(),
        const SizedBox(height: AppSizes.BetweenButton),
        CostomButton(
          onpress: () {},
        )
      ]),
    ));
  }
}
