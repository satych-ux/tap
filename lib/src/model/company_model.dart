import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
sealed class Company with _$Company {
  const factory Company({
    required final String logo,
    required final String isin,
    required final String rating,
    required final String company_name,
    required final List<String> tags,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
