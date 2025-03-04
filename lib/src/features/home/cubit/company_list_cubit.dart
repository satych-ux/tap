import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_1/src/features/home/cubit/company_list_state.dart';
import 'package:tap_1/src/model/company_model.dart';
import 'package:tap_1/src/repositories/company_list/company_list_repo_service.dart';

@lazySingleton
class CompanyListCubit extends Cubit<CompanyListState> {
  final ICompanyListRepository repository;
  List<Company> _allCompanies = [];

  CompanyListCubit(this.repository) : super(const CompanyListState.loading()) {
    // Load initial data when cubit is created
    fetchCompanies();
  }

  Future<void> fetchCompanies() async {
    emit(const CompanyListState.loading());
    try {
      _allCompanies = await repository.fetchCompanies();
      print('allCompanies: $_allCompanies');
      emit(CompanyListState.data(_allCompanies));
    } catch (e) {
      emit(CompanyListState.error(e.toString()));
    }
  }

  void searchCompanies(String query) {
    // Don't search if we don't have data yet
    if (_allCompanies.isEmpty) {
      print('No companies to search');
      return;
    }

    if (query.isEmpty) {
      emit(CompanyListState.data(_allCompanies));
      return;
    }

    final lowercaseQuery = query.toLowerCase();
    final filteredCompanies =
        _allCompanies.where((company) {
          return company.isin.toLowerCase().contains(lowercaseQuery) ||
              company.company_name.toLowerCase().contains(lowercaseQuery) ||
              company.rating.toLowerCase().contains(lowercaseQuery) ||
              (company.tags.any(
                (tag) => tag.toLowerCase().contains(lowercaseQuery),
              ));
        }).toList();

    print('Total companies: ${_allCompanies.length}');
    print('Filtered companies: ${filteredCompanies.length}');

    emit(CompanyListState.data(filteredCompanies));
  }
}
