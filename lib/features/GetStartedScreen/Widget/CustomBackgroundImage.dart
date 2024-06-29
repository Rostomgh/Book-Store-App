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
            image: AssetImage(('assets/BG/backg.png')),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
        );
  }
}
