import 'package:book_store/core/Theme/AppAssets.dart';
import 'package:book_store/core/Theme/AppColor.dart';
import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:book_store/features/GetStartedScreen/Widget/BuildCards.dart';
import 'package:book_store/core/Ui/Widget/CustomBackgroundImage.dart';
import 'package:book_store/core/Ui/Widget/CustomButton.dart';
import 'package:flutter/material.dart';

class GetStartedP extends StatelessWidget {
  const GetStartedP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackGroundImg(
        child: Column(
          children: [
            const SizedBox(height: AppSizes.bar),
            Image.asset(AppAssets.ImgBG2),
            const MyWidget(),
            const SizedBox(height: AppSizes.BetweenButton),
            CustomButton(
              text: 'GET STARTED',
            
              onpress: () {
                Navigator.pushNamed(context, '/get');
              },
            ),
          ],
        ),
      ),
    );
  }
}
