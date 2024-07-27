import 'package:book_store/core/Theme/AppAssets.dart';
import 'package:book_store/core/Theme/AppColor.dart';
import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:book_store/core/Ui/Widget/CustomBackgroundImage.dart';
import 'package:book_store/features/Home/presentation/view/Widget/CustomGrid.dart';
import 'package:book_store/features/Home/presentation/view/Widget/CustomSearchBar.dart';
import 'package:flutter/material.dart';

class HomeP extends StatefulWidget {
  const HomeP({super.key});

  @override
  State<HomeP> createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackGroundImg(
        child: Column(
          children: [
            SizedBox(height: AppSizes.bar),
            CustomSearchBar(),
            //SizedBox(height: AppSizes.LR),
            /*CustomCategorie(
              Category: 'Fiction',
            ),*/
            SizedBox(height: AppSizes.hsearch),
            const Text(
              'Hand-picked for you',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IbarraRealNova',
                  color: AppColor.textColor),
            ),
            const SizedBox(
              height: AppSizes.grid,
            ),
            CustomGrid(
              tap: () {
                Navigator.pushNamed(context, '/get');
              },
              ImgN: AppAssets.Bookimg,
            ),
            const SizedBox(height: AppSizes.LR),
          ],
        ),
      ),
    );
  }
}
