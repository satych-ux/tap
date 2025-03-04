import 'package:flutter/material.dart';

class PDataContainerWithShadow extends StatelessWidget {
  const PDataContainerWithShadow(
      {super.key, this.child, this.paddingAllowed = true});

  final Widget? child;
  final bool paddingAllowed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingAllowed
          ? const EdgeInsets.symmetric(horizontal: 20, vertical: 20)
          : null,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color(0x0000000F),
            offset: Offset(0, 2),
            blurRadius: 6,
            spreadRadius: -1,
          ),
        ],
      ),
      child: child ?? const Text('No Data'),
    );
  }
}
