// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Company _$CompanyFromJson(Map<String, dynamic> json) => _Company(
  logo: json['logo'] as String,
  isin: json['isin'] as String,
  rating: json['rating'] as String,
  company_name: json['company_name'] as String,
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$CompanyToJson(_Company instance) => <String, dynamic>{
  'logo': instance.logo,
  'isin': instance.isin,
  'rating': instance.rating,
  'company_name': instance.company_name,
  'tags': instance.tags,
};
