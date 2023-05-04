import 'package:flutter/material.dart';

class PrimeryButtonWidget extends StatelessWidget {
  const PrimeryButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    this.style,
    this.backgroundColor,
    this.foregroundColor,
  });
  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle? style;

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
      child: Text(text, style: style),
    );
  }
}
