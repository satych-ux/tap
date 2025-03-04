// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CompanyDetail _$CompanyDetailFromJson(Map<String, dynamic> json) =>
    _CompanyDetail(
      logo: json['logo'] as String?,
      company_name: json['company_name'] as String,
      description: json['description'] as String,
      isin: json['isin'] as String,
      status: json['status'] as String,
      pros_and_cons: ProsAndCons.fromJson(
        json['pros_and_cons'] as Map<String, dynamic>,
      ),
      financials: Financials.fromJson(
        json['financials'] as Map<String, dynamic>,
      ),
      issuer_details: IssuerDetails.fromJson(
        json['issuer_details'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$CompanyDetailToJson(_CompanyDetail instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'company_name': instance.company_name,
      'description': instance.description,
      'isin': instance.isin,
      'status': instance.status,
      'pros_and_cons': instance.pros_and_cons,
      'financials': instance.financials,
      'issuer_details': instance.issuer_details,
    };

_ProsAndCons _$ProsAndConsFromJson(Map<String, dynamic> json) => _ProsAndCons(
  pros: (json['pros'] as List<dynamic>).map((e) => e as String).toList(),
  cons: (json['cons'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$ProsAndConsToJson(_ProsAndCons instance) =>
    <String, dynamic>{'pros': instance.pros, 'cons': instance.cons};

_Financials _$FinancialsFromJson(Map<String, dynamic> json) => _Financials(
  ebitda:
      (json['ebitda'] as List<dynamic>)
          .map((e) => FinancialData.fromJson(e as Map<String, dynamic>))
          .toList(),
  revenue:
      (json['revenue'] as List<dynamic>)
          .map((e) => FinancialData.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$FinancialsToJson(_Financials instance) =>
    <String, dynamic>{'ebitda': instance.ebitda, 'revenue': instance.revenue};

_FinancialData _$FinancialDataFromJson(Map<String, dynamic> json) =>
    _FinancialData(
      month: json['month'] as String,
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$FinancialDataToJson(_FinancialData instance) =>
    <String, dynamic>{'month': instance.month, 'value': instance.value};

_IssuerDetails _$IssuerDetailsFromJson(Map<String, dynamic> json) =>
    _IssuerDetails(
      issuer_name: json['issuer_name'] as String,
      type_of_issuer: json['type_of_issuer'] as String,
      sector: json['sector'] as String,
      industry: json['industry'] as String,
      issuer_nature: json['issuer_nature'] as String,
      cin: json['cin'] as String,
      lead_manager: json['lead_manager'] as String,
      registrar: json['registrar'] as String,
      debenture_trustee: json['debenture_trustee'] as String,
    );

Map<String, dynamic> _$IssuerDetailsToJson(_IssuerDetails instance) =>
    <String, dynamic>{
      'issuer_name': instance.issuer_name,
      'type_of_issuer': instance.type_of_issuer,
      'sector': instance.sector,
      'industry': instance.industry,
      'issuer_nature': instance.issuer_nature,
      'cin': instance.cin,
      'lead_manager': instance.lead_manager,
      'registrar': instance.registrar,
      'debenture_trustee': instance.debenture_trustee,
    };
