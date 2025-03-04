
// Widget for displaying Issuer details in a structured format
import 'package:flutter/material.dart';

class IssuerDetailInfoColumn extends StatelessWidget {
  final String title;
  final String value;

  const IssuerDetailInfoColumn(
      {super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff1D4ED8))),
        const SizedBox(
          height: 13,
        ),
        Text(value,
            style: const TextStyle(
                color: Color(0xff111827),
                fontSize: 14,
                fontWeight: FontWeight.w500)),
      ],
    );
  }
}
