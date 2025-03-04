import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_detail_model.freezed.dart';
part 'company_detail_model.g.dart';

@freezed
sealed class CompanyDetail with _$CompanyDetail {
  const factory CompanyDetail({
    String? logo,
    required String company_name,
    required String description,
    required String isin,
    required String status,
    required ProsAndCons pros_and_cons,
    required Financials financials,
    required IssuerDetails issuer_details,
  }) = _CompanyDetail;

  factory CompanyDetail.fromJson(Map<String, dynamic> json) =>
      _$CompanyDetailFromJson(json);
}

@freezed
sealed class ProsAndCons with _$ProsAndCons {
  const factory ProsAndCons({
    required List<String> pros,
    required List<String> cons,
  }) = _ProsAndCons;

  factory ProsAndCons.fromJson(Map<String, dynamic> json) =>
      _$ProsAndConsFromJson(json);
}

@freezed
sealed class Financials with _$Financials {
  const factory Financials({
    required List<FinancialData> ebitda,
    required List<FinancialData> revenue,
  }) = _Financials;

  factory Financials.fromJson(Map<String, dynamic> json) =>
      _$FinancialsFromJson(json);
}

@freezed
sealed class FinancialData with _$FinancialData {
  const factory FinancialData({
    required String month,
    required double value,
  }) = _FinancialData;

  factory FinancialData.fromJson(Map<String, dynamic> json) =>
      _$FinancialDataFromJson(json);
}

@freezed
sealed class IssuerDetails with _$IssuerDetails {
  const factory IssuerDetails({
    required String issuer_name,
    required String type_of_issuer,
    required String sector,
    required String industry,
    required String issuer_nature,
    required String cin,
    required String lead_manager,
    required String registrar,
    required String debenture_trustee,
  }) = _IssuerDetails;

  factory IssuerDetails.fromJson(Map<String, dynamic> json) =>
      _$IssuerDetailsFromJson(json);
}