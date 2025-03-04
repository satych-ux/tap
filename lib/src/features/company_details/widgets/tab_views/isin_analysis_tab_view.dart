import 'package:flutter/material.dart';
import 'package:tap_1/src/features/company_details/widgets/issuer_detail_info_column.dart';
import 'package:tap_1/src/model/company_details/company_detail_model.dart';
import 'package:tap_1/src/widgets/custom_divider.dart';
import 'package:tap_1/src/widgets/fl_bar_chart.dart';
import 'package:tap_1/src/widgets/p_data_container_with_shadow.dart';
import 'package:tap_1/src/widgets/toggle.dart';
import 'package:tap_1/utils/constants/enums/financial_enums.dart';
import 'package:tap_1/utils/constants/resources/static_data.dart';

class ISINAnalysisTabView extends StatefulWidget {
  final CompanyDetail detail;
  const ISINAnalysisTabView({super.key, required this.detail});

  @override
  State<ISINAnalysisTabView> createState() => _ISINAnalysisTabViewState();
}

class _ISINAnalysisTabViewState extends State<ISINAnalysisTabView> {
  int _selectedIndex = 0;
  // Default to EBITDA
  final List<Map<String, dynamic>> ebitdaData = [
    {"month": "Jan", "value": 12000000},
    {"month": "Feb", "value": 13500000},
    {"month": "Mar", "value": 11800000},
    {"month": "Apr", "value": 14500000},
    {"month": "May", "value": 12800000},
    {"month": "Jun", "value": 15500000},
    {"month": "Jul", "value": 13200000},
    {"month": "Aug", "value": 14800000},
    {"month": "Sep", "value": 13700000},
    {"month": "Oct", "value": 16000000},
    {"month": "Nov", "value": 12500000},
    {"month": "Dec", "value": 14000000},
  ];

  final List<Map<String, dynamic>> revenueData = [
    {"month": "Jan", "value": 25000000},
    {"month": "Feb", "value": 26500000},
    {"month": "Mar", "value": 24500000},
    {"month": "Apr", "value": 27800000},
    {"month": "May", "value": 26000000},
    {"month": "Jun", "value": 29000000},
    {"month": "Jul", "value": 27500000},
    {"month": "Aug", "value": 28500000},
    {"month": "Sep", "value": 27000000},
    {"month": "Oct", "value": 30000000},
    {"month": "Nov", "value": 25500000},
    {"month": "Dec", "value": 29500000},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Bar Chart
        PDataContainerWithShadow(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "COMPANY FINANCIALS",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      color: Color(0xffA3A3A3),
                    ),
                  ),
                  CustomToggleButton(
                    onSelectionChanged: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 8),
              BarChartSample1(
                financialData: _selectedIndex == 0 ? ebitdaData : revenueData,
                financialType:  _selectedIndex == 0 ? FinancialGraphType.ebitda : FinancialGraphType.revenue,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // Issuer Details
        PDataContainerWithShadow(
          paddingAllowed: false,
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    const SizedBox(height: 18),
                    Row(
                      children: [
                        const SizedBox(width: 28),
                        Image.asset(
                          "assets/images/app_images/address_book.png",
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "Issuer Details",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff020617),
                          ),
                        ),
                      ],
                    ),
                    const CustomDivider(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 35,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...issuerDetails.map(
                      (detail) => IssuerDetailInfoColumn(
                        title: detail["title"]!,
                        value: detail["value"]!,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

