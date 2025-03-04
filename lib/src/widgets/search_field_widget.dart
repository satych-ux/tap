import 'package:flutter/material.dart';
import 'package:tap_1/injection.dart';
import 'package:tap_1/src/features/home/cubit/company_list_cubit.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        getIt<CompanyListCubit>().searchCompanies(value);
      },
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: Color(0xff99A1AF),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        labelStyle: const TextStyle(
          color: Color(0xff101828),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        hintText: "Search by Issuer Name or ISIN",
        prefixIcon: const Padding(
          padding: EdgeInsets.only(top: 5.0),
          child: Icon(Icons.search, color: Colors.grey),
        ),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
