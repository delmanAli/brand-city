import 'package:flutter/material.dart';

class PrimeryButtonWidget extends StatelessWidget {
  const PrimeryButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = Colors.blue,
    this.foregroundColor = Colors.white,
  });
  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.0),
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
