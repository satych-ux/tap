
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CompanyDetailShimmerPlaceholder extends StatelessWidget {
  const CompanyDetailShimmerPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 76),

            // Back Button Placeholder
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Company Logo Placeholder
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 15),

            // Company Name & Description Placeholder
            Container(width: 150, height: 16, color: Colors.white),
            const SizedBox(height: 10),
            Container(width: double.infinity, height: 12, color: Colors.white),
            const SizedBox(height: 10),
            Container(width: double.infinity, height: 12, color: Colors.white),
            const SizedBox(height: 12),

            // Status Tags Placeholder
            Row(
              children: [
                Container(width: 100, height: 20, color: Colors.white),
                const SizedBox(width: 8),
                Container(width: 60, height: 20, color: Colors.white),
              ],
            ),
            const SizedBox(height: 12),

            // Tabs Placeholder
            Container(width: double.infinity, height: 40, color: Colors.white),
            const SizedBox(height: 12),

            // Financial Details Card Placeholder
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 120,
                    height: 16,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    height: 12,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 12,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // Issuer Details Card Placeholder
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 140,
                    height: 16,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    height: 12,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    height: 12,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
