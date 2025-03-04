import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_1/injection.dart';
import 'package:tap_1/src/features/home/cubit/company_list_cubit.dart';
import 'package:tap_1/src/features/home/cubit/company_list_state.dart';
import 'package:tap_1/src/features/home/widgets/company_list_view_widget.dart';
import 'package:tap_1/src/widgets/p_data_container_with_shadow.dart';
import 'package:tap_1/src/widgets/search_field_widget.dart';
import 'package:shimmer/shimmer.dart';

/// Displays a list of Bonds.
class BondListView extends StatelessWidget {
  const BondListView({super.key});

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ------ Spacing at the top ------
                const SizedBox(height: 36),

                // ------ Page Title ------
                const Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),

                // ------ Spacing below title ------
                const SizedBox(height: 26),

                // ------ Search Field ------
                GestureDetector(
                  onTap: () => HapticFeedback.lightImpact(),
                  child: const SearchFieldWidget(),
                ),

                // ------ Spacing below search field ------
                const SizedBox(height: 26),

                // ------ Section Title: Search Results ------
                const Text(
                  "SEARCH RESULTS",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF99A1AF),
                  ),
                ),

                // ------ Small spacing below section title ------
                const SizedBox(height: 12),

                // ------ Company List Section ------
                PDataContainerWithShadow(
                  child: BlocProvider(
                    create:
                        (context) =>
                            getIt<CompanyListCubit>()..fetchCompanies(),
                    child: BlocBuilder<CompanyListCubit, CompanyListState>(
                      builder: (context, state) {
                        switch (state) {
                          case Loading():
                            return Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 250,
                                  bottom: 250,
                                ),
                                child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            );
                          case Data(:final companies):
                            return CompanyListView(items: companies);

                          case ErrorDetails():
                            return Center(child: Text('error'));
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
