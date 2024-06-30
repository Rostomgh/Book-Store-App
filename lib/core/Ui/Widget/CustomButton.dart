import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final TextStyle style;
  final VoidCallback onpress;

  const CustomButton({
    required this.text,
    required this.style,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpress,
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
