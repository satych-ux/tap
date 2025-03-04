import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_1/injection.dart';
import 'package:tap_1/src/features/company_details/cubit/company_detail_cubit.dart';
import 'package:tap_1/src/features/company_details/cubit/company_detail_state.dart';
import 'package:tap_1/src/features/company_details/widgets/shimer_placeholder/company_details_shimmer_ph.dart';
import 'package:tap_1/src/model/company_details/company_detail_model.dart';
import 'package:tap_1/src/widgets/company_logo_container.dart';

import 'package:tap_1/src/widgets/custom_icon_button.dart';

import 'package:tap_1/src/widgets/tabbar.dart';

class CompanyDetailsScreen extends StatelessWidget {
  const CompanyDetailsScreen({super.key});
  //create route
  static const String routeName = '/company_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      body: BlocProvider(
        create:
            (context) => getIt<CompanyDetailCubit>()..fetchCompanyDetail(null),
        child: BlocBuilder<CompanyDetailCubit, CompanyDetailState>(
          builder: (context, state) {
            if (kDebugMode) {
              print('underbuilder $state');
            }
            switch (state) {
              case Loading():
                return CompanyDetailShimmerPlaceholder();
              case Data(:final detail):
                return DetailSection(detail: detail);

              case ErrorDetails():
                return Center(child: Text('error'));
            }
          },
        ),
      ),
    );
  }
}

class DetailSection extends StatelessWidget {
  final CompanyDetail detail;
  const DetailSection({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 76),
          CustomIconButton(
            size: 30,
            icon: Icons.arrow_back,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),

          const SizedBox(height: 30),

          // Infra Market Label
          const CompnayLogoContainer(),
          const SizedBox(height: 15),

          // Company Name & Description
          Text(
            detail.company_name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0Xff101828),
            ),
          ),
          const SizedBox(height: 14),
          Text(
            detail.description,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff6A7282),
            ),
          ),
          const SizedBox(height: 12),

          // Status Tags
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: const Color(0XFFDFE8F8),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  "ISIN: ${detail.isin}",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2563EB),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 11,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffE5F2EF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  detail.status,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff059669),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Tabs (Mocked UI)
          TabbarWithIndicator(detail: detail),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
