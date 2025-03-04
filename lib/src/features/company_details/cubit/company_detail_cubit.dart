import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tap_1/src/repositories/company_details/company_detail_repo_service.dart';
import 'company_detail_state.dart';

@injectable
class CompanyDetailCubit extends Cubit<CompanyDetailState> {
  final ICompanyDetailRepository _repository;

  CompanyDetailCubit(this._repository)
    : super(const CompanyDetailState.loading());

  Future<void> fetchCompanyDetail(String? isin) async {


    emit(const CompanyDetailState.loading());

    try {
      final detail = await _repository.fetchCompanyDetail(isin);

      emit(CompanyDetailState.data(detail));
    } catch (e) {
      emit(CompanyDetailState.error(e.toString()));
    }
  }
}
