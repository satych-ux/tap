import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_1/src/model/company_details/company_detail_model.dart';
import 'package:tap_1/src/repositories/company_details/company_detail_repo_service.dart';

@Injectable(as: ICompanyDetailRepository)
class CompanyDetailRepository implements ICompanyDetailRepository {
  final Dio _dio = Dio();

  @override
  Future<CompanyDetail> fetchCompanyDetail(String? isin) async {
    try {
      dynamic response;

      try {
        response = await _dio.get('https://eo61q3zd4heiwke.m.pipedream.net/');
      } catch (e) {
        if(kDebugMode) {
          print('Error: $e');
        }
      }
      return CompanyDetail.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch company details');
    }
  }
}
