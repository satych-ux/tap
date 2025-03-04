import 'package:tap_1/src/model/company_details/company_detail_model.dart';

abstract class ICompanyDetailRepository {
  Future<CompanyDetail> fetchCompanyDetail(String? isin);
}