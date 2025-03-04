import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tap_1/src/features/company_details/company_details_view.dart';
import 'package:tap_1/src/model/company_model.dart';
import 'package:tap_1/src/widgets/custom_divider.dart';
import 'package:tap_1/src/widgets/forward_icon.dart';

class CompanyListView extends StatelessWidget {
  const CompanyListView({super.key, required this.items});

  final List<Company> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Providing a restorationId allows the ListView to restore the
      // scroll position when a user leaves and returns to the app after it
      // has been killed while running in the background.
      restorationId: 'BondListView',
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final result = items[index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, CompanyDetailsScreen.routeName);
            HapticFeedback.heavyImpact(); // Navigate to
          },
          child: Padding(
            padding: EdgeInsets.only(top: index != 0 ? 20 : 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      width: 40,
                      height: 40,
                      child: Container(
                        margin: const EdgeInsets.all(5.5),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              result.logo, // Use your default logo here
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              result.isin.substring(0, result.isin.length - 4),
                              style: const TextStyle(
                                color: Color(0xFF262626),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 2),
                            Text(
                              result.isin.substring(result.isin.length - 4),
                              style: const TextStyle(
                                color: Color(0xFF1E2939),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                            "${result.rating} • ${result.company_name}",
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const ForwardIcon(),
                  ],
                ),
                if (index != items.length - 1) const CustomDivider(),
              ],
            ),
          ),
        );
      },
    );
  }
}
