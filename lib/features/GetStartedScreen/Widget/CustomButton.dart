import 'package:book_store/core/Theme/AppColor.dart';
import 'package:flutter/material.dart';

class CostomButton extends StatelessWidget {
  final void Function() onpress;
  const CostomButton({super.key, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 368,
      height: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: AppColor.ButColor
    ),
      child: MaterialButton(
        onPressed: onpress,
        child: const Text(
          'GET STARTED',
          style: TextStyle(
              color: AppColor.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
