import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_1/src/model/company_model.dart';
import 'package:tap_1/src/repositories/company_list/company_list_repo_service.dart';

// Register CompanyListRepository as an injectable dependency
@Injectable(as: ICompanyListRepository)
class CompanyListRepository implements ICompanyListRepository {
  final Dio _dio;
  final String _baseUrl;

  // Inject Dio via constructor
  CompanyListRepository(this._dio, @Named('BaseUrl') this._baseUrl);

  @override
  Future<List<Company>> fetchCompanies() async {
    try {
      final response = await _dio.get(_baseUrl);
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data["data"];
        var toreturndata = data.map((json) => Company.fromJson(json)).toList();
        return toreturndata;
      } else {
        throw Exception("Failed to load companies");
      }
    } catch (e) {
      throw Exception("Error fetching data: $e");
    }
  }
}
