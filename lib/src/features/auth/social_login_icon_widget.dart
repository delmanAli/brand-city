import 'package:flutter/material.dart';

class SocialLoginIconWidget extends StatelessWidget {
  const SocialLoginIconWidget({
    super.key,
    required this.iconData,
    this.iconColor,
    required this.text,
    required this.onTaped,
  });

  final IconData iconData;
  final Color? iconColor;
  final String text;
  final VoidCallback onTaped;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTaped,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          // color: Colors.red,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: iconColor,
            ),
            const SizedBox(width: 10.0),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
