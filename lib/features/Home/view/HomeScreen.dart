import 'package:book_store/features/Home/view/Widget/CustomGrid.dart';
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

      body:SafeArea(child: CustomGrid())

    );
  }
}