// States
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_1/src/model/company_model.dart';

part 'company_list_state.freezed.dart';
// part 'company_list_state.g.dart';
@freezed
sealed class CompanyListState with _$CompanyListState {

  const factory CompanyListState.loading() = Loading;
  const factory CompanyListState.data(List<Company> companies) = Data;
  const factory CompanyListState.error(String message) = ErrorDetails;

  
}
