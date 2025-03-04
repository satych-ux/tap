import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final double? size;
  final IconData icon;
  final VoidCallback onTap;
  final Color? color;
  final Color? bgColor;
  final double padding;
  const CustomIconButton(
      {super.key,
      this.size,
      required this.icon,
      required this.onTap,
      this.color,
      this.bgColor,
      this.padding=7});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:  EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: bgColor ?? Colors.white,
          border: Border.all(color: Colors.grey.shade300, width: 1),
          borderRadius: BorderRadius.circular(100),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0000000F),
              offset: Offset(0, 2),
              blurRadius: 6,
              spreadRadius: -1,
            ),
          ],
        ),
        child: Icon(
          icon,
          size: size ?? 18,
          color: color ?? Colors.black,
        ),
      ),
    );
  }
}
