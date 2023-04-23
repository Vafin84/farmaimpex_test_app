import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.fixedSize,
    this.minimumSize,
    this.maximumSize,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final Size? fixedSize;
  final Size? minimumSize;
  final Size? maximumSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: fixedSize,
        minimumSize: minimumSize,
        maximumSize: maximumSize,
        backgroundColor: backgroundColor,
      ),
      child: Text(text),
    );
  }
}
