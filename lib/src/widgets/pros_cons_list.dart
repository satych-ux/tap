import 'package:flutter/material.dart';
import 'package:tap_1/src/widgets/custom_icon_button.dart';

class ProsConsList extends StatelessWidget {
  final String title;
  final List<String> items;
  final bool isPros; // true = Pros, false = Cons

  const ProsConsList({
    super.key,
    required this.title,
    required this.items,
    required this.isPros,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title: "Pros" or "Cons"
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: isPros
                ? const Color(0xff15803D)
                : const Color(0xffD97706), // Green for Pros, Orange for Cons
          ),
        ),

        // ListView Builder to dynamically create Pros/Cons list
        ListView.builder(
          itemCount: items.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Custom Icon Button (Check for Pros, Cross for Cons)
                    CustomIconButton(
                      padding: 5,
                      bgColor: isPros
                          ? const Color(0xffE3F4E9)
                          : const Color(
                              0xffFAEEE1), // Light Green for Pros, Light Orange for Cons
                      color: isPros
                          ? const Color(0xff059669)
                          : const Color(
                              0xffD97706), // Green for Pros, Orange for Cons
                      size: 13,
                      icon: isPros
                          ? Icons.check
                          : Icons.close, // Check for Pros, Close for Cons
                      onTap: () {},
                    ),
                    const SizedBox(width: 18),

                    // Text that wraps automatically
                    Expanded(
                      child: Text(
                        items[index],
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff364153),
                        ),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
              ],
            );
          },
        ),
      ],
    );
  }
}
