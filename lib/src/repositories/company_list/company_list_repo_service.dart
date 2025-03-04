// Define an abstract repository interface
import 'package:tap_1/src/model/company_model.dart';

abstract class ICompanyListRepository {
  Future<List<Company>> fetchCompanies();
}
