import 'package:book_store/core/Theme/AppAssets.dart';
import 'package:book_store/core/Theme/AppSizes.dart';
import 'package:book_store/core/Ui/Widget/BackGround.dart';
import 'package:book_store/core/Ui/Widget/CustomButton.dart';
import 'package:book_store/features/GettingBook/view/Widget/CustomAbout.dart';
import 'package:flutter/material.dart';

class GetBookP extends StatefulWidget {
  const GetBookP({super.key});

  @override
  State<GetBookP> createState() => _GetBookPState();
}

class _GetBookPState extends State<GetBookP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        height: double.infinity,
        child: Stack(
          children: [
            const BackGround(
              imagePath: AppAssets.Bookimg,
            ),
            Positioned(
                left: AppSizes.LR,
                right: AppSizes.LR,
                bottom: AppSizes.bottom,
                child: CustomButton(text: 'Read Book', onpress: () {})),
            //SizedBox(height: AppSizes.gtext),
            const Positioned(
              left: AppSizes.LR,
              right: AppSizes.LR,
              bottom: AppSizes.Bt2,
              child: CustomAbout(
                Aauthor:
                    'Bestselling author Chitra B. Divakaruni\'s first historical fiction book \'The Last Queen\' released in 2021.',
                Abook:
                    'Born to the royal kennel keeper, the beautiful Jindan Kaur married Maharaja Ranjit Singh and became his youngest, favourite and last queen.',
              ),
            )
          ],
        ),
      ),
    );
  }
}
