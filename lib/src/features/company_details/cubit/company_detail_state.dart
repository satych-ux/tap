import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:tap_1/src/model/company_details/company_detail_model.dart';

part 'company_detail_state.freezed.dart';

@freezed
sealed class CompanyDetailState with _$CompanyDetailState {
  const factory CompanyDetailState.loading() = Loading;
  const factory CompanyDetailState.data(CompanyDetail detail) = Data;
  const factory CompanyDetailState.error(String message) = ErrorDetails;
}