
import 'package:book_store/core/Theme/AppColor.dart';
import 'package:book_store/core/Ui/Widget/CustomBackgroundImage.dart';
import 'package:flutter/material.dart';

class HomeP extends StatefulWidget {
  const HomeP({super.key});

  @override
  State<HomeP> createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      body:SingleChildScrollView(
        child: CustomBackGroundImg(
          child: Column(
            children: [
              Text('Hand-picked for you',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'IbarraRealNova',color: AppColor.textColor),)
            ],
          ),
        ),
      )

    );
  }
}