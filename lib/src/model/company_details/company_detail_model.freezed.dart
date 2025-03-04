// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyDetail {

 String? get logo; String get company_name; String get description; String get isin; String get status; ProsAndCons get pros_and_cons; Financials get financials; IssuerDetails get issuer_details;
/// Create a copy of CompanyDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyDetailCopyWith<CompanyDetail> get copyWith => _$CompanyDetailCopyWithImpl<CompanyDetail>(this as CompanyDetail, _$identity);

  /// Serializes this CompanyDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyDetail&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.company_name, company_name) || other.company_name == company_name)&&(identical(other.description, description) || other.description == description)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.status, status) || other.status == status)&&(identical(other.pros_and_cons, pros_and_cons) || other.pros_and_cons == pros_and_cons)&&(identical(other.financials, financials) || other.financials == financials)&&(identical(other.issuer_details, issuer_details) || other.issuer_details == issuer_details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,logo,company_name,description,isin,status,pros_and_cons,financials,issuer_details);

@override
String toString() {
  return 'CompanyDetail(logo: $logo, company_name: $company_name, description: $description, isin: $isin, status: $status, pros_and_cons: $pros_and_cons, financials: $financials, issuer_details: $issuer_details)';
}


}

/// @nodoc
abstract mixin class $CompanyDetailCopyWith<$Res>  {
  factory $CompanyDetailCopyWith(CompanyDetail value, $Res Function(CompanyDetail) _then) = _$CompanyDetailCopyWithImpl;
@useResult
$Res call({
 String? logo, String company_name, String description, String isin, String status, ProsAndCons pros_and_cons, Financials financials, IssuerDetails issuer_details
});


$ProsAndConsCopyWith<$Res> get pros_and_cons;$FinancialsCopyWith<$Res> get financials;$IssuerDetailsCopyWith<$Res> get issuer_details;

}
/// @nodoc
class _$CompanyDetailCopyWithImpl<$Res>
    implements $CompanyDetailCopyWith<$Res> {
  _$CompanyDetailCopyWithImpl(this._self, this._then);

  final CompanyDetail _self;
  final $Res Function(CompanyDetail) _then;

/// Create a copy of CompanyDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? logo = freezed,Object? company_name = null,Object? description = null,Object? isin = null,Object? status = null,Object? pros_and_cons = null,Object? financials = null,Object? issuer_details = null,}) {
  return _then(_self.copyWith(
logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,company_name: null == company_name ? _self.company_name : company_name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,pros_and_cons: null == pros_and_cons ? _self.pros_and_cons : pros_and_cons // ignore: cast_nullable_to_non_nullable
as ProsAndCons,financials: null == financials ? _self.financials : financials // ignore: cast_nullable_to_non_nullable
as Financials,issuer_details: null == issuer_details ? _self.issuer_details : issuer_details // ignore: cast_nullable_to_non_nullable
as IssuerDetails,
  ));
}
/// Create a copy of CompanyDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProsAndConsCopyWith<$Res> get pros_and_cons {
  
  return $ProsAndConsCopyWith<$Res>(_self.pros_and_cons, (value) {
    return _then(_self.copyWith(pros_and_cons: value));
  });
}/// Create a copy of CompanyDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialsCopyWith<$Res> get financials {
  
  return $FinancialsCopyWith<$Res>(_self.financials, (value) {
    return _then(_self.copyWith(financials: value));
  });
}/// Create a copy of CompanyDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IssuerDetailsCopyWith<$Res> get issuer_details {
  
  return $IssuerDetailsCopyWith<$Res>(_self.issuer_details, (value) {
    return _then(_self.copyWith(issuer_details: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _CompanyDetail implements CompanyDetail {
  const _CompanyDetail({this.logo, required this.company_name, required this.description, required this.isin, required this.status, required this.pros_and_cons, required this.financials, required this.issuer_details});
  factory _CompanyDetail.fromJson(Map<String, dynamic> json) => _$CompanyDetailFromJson(json);

@override final  String? logo;
@override final  String company_name;
@override final  String description;
@override final  String isin;
@override final  String status;
@override final  ProsAndCons pros_and_cons;
@override final  Financials financials;
@override final  IssuerDetails issuer_details;

/// Create a copy of CompanyDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyDetailCopyWith<_CompanyDetail> get copyWith => __$CompanyDetailCopyWithImpl<_CompanyDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyDetail&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.company_name, company_name) || other.company_name == company_name)&&(identical(other.description, description) || other.description == description)&&(identical(other.isin, isin) || other.isin == isin)&&(identical(other.status, status) || other.status == status)&&(identical(other.pros_and_cons, pros_and_cons) || other.pros_and_cons == pros_and_cons)&&(identical(other.financials, financials) || other.financials == financials)&&(identical(other.issuer_details, issuer_details) || other.issuer_details == issuer_details));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,logo,company_name,description,isin,status,pros_and_cons,financials,issuer_details);

@override
String toString() {
  return 'CompanyDetail(logo: $logo, company_name: $company_name, description: $description, isin: $isin, status: $status, pros_and_cons: $pros_and_cons, financials: $financials, issuer_details: $issuer_details)';
}


}

/// @nodoc
abstract mixin class _$CompanyDetailCopyWith<$Res> implements $CompanyDetailCopyWith<$Res> {
  factory _$CompanyDetailCopyWith(_CompanyDetail value, $Res Function(_CompanyDetail) _then) = __$CompanyDetailCopyWithImpl;
@override @useResult
$Res call({
 String? logo, String company_name, String description, String isin, String status, ProsAndCons pros_and_cons, Financials financials, IssuerDetails issuer_details
});


@override $ProsAndConsCopyWith<$Res> get pros_and_cons;@override $FinancialsCopyWith<$Res> get financials;@override $IssuerDetailsCopyWith<$Res> get issuer_details;

}
/// @nodoc
class __$CompanyDetailCopyWithImpl<$Res>
    implements _$CompanyDetailCopyWith<$Res> {
  __$CompanyDetailCopyWithImpl(this._self, this._then);

  final _CompanyDetail _self;
  final $Res Function(_CompanyDetail) _then;

/// Create a copy of CompanyDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? logo = freezed,Object? company_name = null,Object? description = null,Object? isin = null,Object? status = null,Object? pros_and_cons = null,Object? financials = null,Object? issuer_details = null,}) {
  return _then(_CompanyDetail(
logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,company_name: null == company_name ? _self.company_name : company_name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isin: null == isin ? _self.isin : isin // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,pros_and_cons: null == pros_and_cons ? _self.pros_and_cons : pros_and_cons // ignore: cast_nullable_to_non_nullable
as ProsAndCons,financials: null == financials ? _self.financials : financials // ignore: cast_nullable_to_non_nullable
as Financials,issuer_details: null == issuer_details ? _self.issuer_details : issuer_details // ignore: cast_nullable_to_non_nullable
as IssuerDetails,
  ));
}

/// Create a copy of CompanyDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProsAndConsCopyWith<$Res> get pros_and_cons {
  
  return $ProsAndConsCopyWith<$Res>(_self.pros_and_cons, (value) {
    return _then(_self.copyWith(pros_and_cons: value));
  });
}/// Create a copy of CompanyDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinancialsCopyWith<$Res> get financials {
  
  return $FinancialsCopyWith<$Res>(_self.financials, (value) {
    return _then(_self.copyWith(financials: value));
  });
}/// Create a copy of CompanyDetail
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IssuerDetailsCopyWith<$Res> get issuer_details {
  
  return $IssuerDetailsCopyWith<$Res>(_self.issuer_details, (value) {
    return _then(_self.copyWith(issuer_details: value));
  });
}
}


/// @nodoc
mixin _$ProsAndCons {

 List<String> get pros; List<String> get cons;
/// Create a copy of ProsAndCons
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProsAndConsCopyWith<ProsAndCons> get copyWith => _$ProsAndConsCopyWithImpl<ProsAndCons>(this as ProsAndCons, _$identity);

  /// Serializes this ProsAndCons to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProsAndCons&&const DeepCollectionEquality().equals(other.pros, pros)&&const DeepCollectionEquality().equals(other.cons, cons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(pros),const DeepCollectionEquality().hash(cons));

@override
String toString() {
  return 'ProsAndCons(pros: $pros, cons: $cons)';
}


}

/// @nodoc
abstract mixin class $ProsAndConsCopyWith<$Res>  {
  factory $ProsAndConsCopyWith(ProsAndCons value, $Res Function(ProsAndCons) _then) = _$ProsAndConsCopyWithImpl;
@useResult
$Res call({
 List<String> pros, List<String> cons
});




}
/// @nodoc
class _$ProsAndConsCopyWithImpl<$Res>
    implements $ProsAndConsCopyWith<$Res> {
  _$ProsAndConsCopyWithImpl(this._self, this._then);

  final ProsAndCons _self;
  final $Res Function(ProsAndCons) _then;

/// Create a copy of ProsAndCons
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pros = null,Object? cons = null,}) {
  return _then(_self.copyWith(
pros: null == pros ? _self.pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self.cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ProsAndCons implements ProsAndCons {
  const _ProsAndCons({required final  List<String> pros, required final  List<String> cons}): _pros = pros,_cons = cons;
  factory _ProsAndCons.fromJson(Map<String, dynamic> json) => _$ProsAndConsFromJson(json);

 final  List<String> _pros;
@override List<String> get pros {
  if (_pros is EqualUnmodifiableListView) return _pros;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pros);
}

 final  List<String> _cons;
@override List<String> get cons {
  if (_cons is EqualUnmodifiableListView) return _cons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cons);
}


/// Create a copy of ProsAndCons
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProsAndConsCopyWith<_ProsAndCons> get copyWith => __$ProsAndConsCopyWithImpl<_ProsAndCons>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProsAndConsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProsAndCons&&const DeepCollectionEquality().equals(other._pros, _pros)&&const DeepCollectionEquality().equals(other._cons, _cons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_pros),const DeepCollectionEquality().hash(_cons));

@override
String toString() {
  return 'ProsAndCons(pros: $pros, cons: $cons)';
}


}

/// @nodoc
abstract mixin class _$ProsAndConsCopyWith<$Res> implements $ProsAndConsCopyWith<$Res> {
  factory _$ProsAndConsCopyWith(_ProsAndCons value, $Res Function(_ProsAndCons) _then) = __$ProsAndConsCopyWithImpl;
@override @useResult
$Res call({
 List<String> pros, List<String> cons
});




}
/// @nodoc
class __$ProsAndConsCopyWithImpl<$Res>
    implements _$ProsAndConsCopyWith<$Res> {
  __$ProsAndConsCopyWithImpl(this._self, this._then);

  final _ProsAndCons _self;
  final $Res Function(_ProsAndCons) _then;

/// Create a copy of ProsAndCons
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pros = null,Object? cons = null,}) {
  return _then(_ProsAndCons(
pros: null == pros ? _self._pros : pros // ignore: cast_nullable_to_non_nullable
as List<String>,cons: null == cons ? _self._cons : cons // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$Financials {

 List<FinancialData> get ebitda; List<FinancialData> get revenue;
/// Create a copy of Financials
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialsCopyWith<Financials> get copyWith => _$FinancialsCopyWithImpl<Financials>(this as Financials, _$identity);

  /// Serializes this Financials to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Financials&&const DeepCollectionEquality().equals(other.ebitda, ebitda)&&const DeepCollectionEquality().equals(other.revenue, revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(ebitda),const DeepCollectionEquality().hash(revenue));

@override
String toString() {
  return 'Financials(ebitda: $ebitda, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class $FinancialsCopyWith<$Res>  {
  factory $FinancialsCopyWith(Financials value, $Res Function(Financials) _then) = _$FinancialsCopyWithImpl;
@useResult
$Res call({
 List<FinancialData> ebitda, List<FinancialData> revenue
});




}
/// @nodoc
class _$FinancialsCopyWithImpl<$Res>
    implements $FinancialsCopyWith<$Res> {
  _$FinancialsCopyWithImpl(this._self, this._then);

  final Financials _self;
  final $Res Function(Financials) _then;

/// Create a copy of Financials
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ebitda = null,Object? revenue = null,}) {
  return _then(_self.copyWith(
ebitda: null == ebitda ? _self.ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<FinancialData>,revenue: null == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as List<FinancialData>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Financials implements Financials {
  const _Financials({required final  List<FinancialData> ebitda, required final  List<FinancialData> revenue}): _ebitda = ebitda,_revenue = revenue;
  factory _Financials.fromJson(Map<String, dynamic> json) => _$FinancialsFromJson(json);

 final  List<FinancialData> _ebitda;
@override List<FinancialData> get ebitda {
  if (_ebitda is EqualUnmodifiableListView) return _ebitda;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ebitda);
}

 final  List<FinancialData> _revenue;
@override List<FinancialData> get revenue {
  if (_revenue is EqualUnmodifiableListView) return _revenue;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_revenue);
}


/// Create a copy of Financials
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialsCopyWith<_Financials> get copyWith => __$FinancialsCopyWithImpl<_Financials>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Financials&&const DeepCollectionEquality().equals(other._ebitda, _ebitda)&&const DeepCollectionEquality().equals(other._revenue, _revenue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ebitda),const DeepCollectionEquality().hash(_revenue));

@override
String toString() {
  return 'Financials(ebitda: $ebitda, revenue: $revenue)';
}


}

/// @nodoc
abstract mixin class _$FinancialsCopyWith<$Res> implements $FinancialsCopyWith<$Res> {
  factory _$FinancialsCopyWith(_Financials value, $Res Function(_Financials) _then) = __$FinancialsCopyWithImpl;
@override @useResult
$Res call({
 List<FinancialData> ebitda, List<FinancialData> revenue
});




}
/// @nodoc
class __$FinancialsCopyWithImpl<$Res>
    implements _$FinancialsCopyWith<$Res> {
  __$FinancialsCopyWithImpl(this._self, this._then);

  final _Financials _self;
  final $Res Function(_Financials) _then;

/// Create a copy of Financials
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ebitda = null,Object? revenue = null,}) {
  return _then(_Financials(
ebitda: null == ebitda ? _self._ebitda : ebitda // ignore: cast_nullable_to_non_nullable
as List<FinancialData>,revenue: null == revenue ? _self._revenue : revenue // ignore: cast_nullable_to_non_nullable
as List<FinancialData>,
  ));
}


}


/// @nodoc
mixin _$FinancialData {

 String get month; double get value;
/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinancialDataCopyWith<FinancialData> get copyWith => _$FinancialDataCopyWithImpl<FinancialData>(this as FinancialData, _$identity);

  /// Serializes this FinancialData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinancialData&&(identical(other.month, month) || other.month == month)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,value);

@override
String toString() {
  return 'FinancialData(month: $month, value: $value)';
}


}

/// @nodoc
abstract mixin class $FinancialDataCopyWith<$Res>  {
  factory $FinancialDataCopyWith(FinancialData value, $Res Function(FinancialData) _then) = _$FinancialDataCopyWithImpl;
@useResult
$Res call({
 String month, double value
});




}
/// @nodoc
class _$FinancialDataCopyWithImpl<$Res>
    implements $FinancialDataCopyWith<$Res> {
  _$FinancialDataCopyWithImpl(this._self, this._then);

  final FinancialData _self;
  final $Res Function(FinancialData) _then;

/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? value = null,}) {
  return _then(_self.copyWith(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FinancialData implements FinancialData {
  const _FinancialData({required this.month, required this.value});
  factory _FinancialData.fromJson(Map<String, dynamic> json) => _$FinancialDataFromJson(json);

@override final  String month;
@override final  double value;

/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinancialDataCopyWith<_FinancialData> get copyWith => __$FinancialDataCopyWithImpl<_FinancialData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinancialDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinancialData&&(identical(other.month, month) || other.month == month)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,value);

@override
String toString() {
  return 'FinancialData(month: $month, value: $value)';
}


}

/// @nodoc
abstract mixin class _$FinancialDataCopyWith<$Res> implements $FinancialDataCopyWith<$Res> {
  factory _$FinancialDataCopyWith(_FinancialData value, $Res Function(_FinancialData) _then) = __$FinancialDataCopyWithImpl;
@override @useResult
$Res call({
 String month, double value
});




}
/// @nodoc
class __$FinancialDataCopyWithImpl<$Res>
    implements _$FinancialDataCopyWith<$Res> {
  __$FinancialDataCopyWithImpl(this._self, this._then);

  final _FinancialData _self;
  final $Res Function(_FinancialData) _then;

/// Create a copy of FinancialData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? value = null,}) {
  return _then(_FinancialData(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$IssuerDetails {

 String get issuer_name; String get type_of_issuer; String get sector; String get industry; String get issuer_nature; String get cin; String get lead_manager; String get registrar; String get debenture_trustee;
/// Create a copy of IssuerDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IssuerDetailsCopyWith<IssuerDetails> get copyWith => _$IssuerDetailsCopyWithImpl<IssuerDetails>(this as IssuerDetails, _$identity);

  /// Serializes this IssuerDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssuerDetails&&(identical(other.issuer_name, issuer_name) || other.issuer_name == issuer_name)&&(identical(other.type_of_issuer, type_of_issuer) || other.type_of_issuer == type_of_issuer)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.issuer_nature, issuer_nature) || other.issuer_nature == issuer_nature)&&(identical(other.cin, cin) || other.cin == cin)&&(identical(other.lead_manager, lead_manager) || other.lead_manager == lead_manager)&&(identical(other.registrar, registrar) || other.registrar == registrar)&&(identical(other.debenture_trustee, debenture_trustee) || other.debenture_trustee == debenture_trustee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,issuer_name,type_of_issuer,sector,industry,issuer_nature,cin,lead_manager,registrar,debenture_trustee);

@override
String toString() {
  return 'IssuerDetails(issuer_name: $issuer_name, type_of_issuer: $type_of_issuer, sector: $sector, industry: $industry, issuer_nature: $issuer_nature, cin: $cin, lead_manager: $lead_manager, registrar: $registrar, debenture_trustee: $debenture_trustee)';
}


}

/// @nodoc
abstract mixin class $IssuerDetailsCopyWith<$Res>  {
  factory $IssuerDetailsCopyWith(IssuerDetails value, $Res Function(IssuerDetails) _then) = _$IssuerDetailsCopyWithImpl;
@useResult
$Res call({
 String issuer_name, String type_of_issuer, String sector, String industry, String issuer_nature, String cin, String lead_manager, String registrar, String debenture_trustee
});




}
/// @nodoc
class _$IssuerDetailsCopyWithImpl<$Res>
    implements $IssuerDetailsCopyWith<$Res> {
  _$IssuerDetailsCopyWithImpl(this._self, this._then);

  final IssuerDetails _self;
  final $Res Function(IssuerDetails) _then;

/// Create a copy of IssuerDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? issuer_name = null,Object? type_of_issuer = null,Object? sector = null,Object? industry = null,Object? issuer_nature = null,Object? cin = null,Object? lead_manager = null,Object? registrar = null,Object? debenture_trustee = null,}) {
  return _then(_self.copyWith(
issuer_name: null == issuer_name ? _self.issuer_name : issuer_name // ignore: cast_nullable_to_non_nullable
as String,type_of_issuer: null == type_of_issuer ? _self.type_of_issuer : type_of_issuer // ignore: cast_nullable_to_non_nullable
as String,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,issuer_nature: null == issuer_nature ? _self.issuer_nature : issuer_nature // ignore: cast_nullable_to_non_nullable
as String,cin: null == cin ? _self.cin : cin // ignore: cast_nullable_to_non_nullable
as String,lead_manager: null == lead_manager ? _self.lead_manager : lead_manager // ignore: cast_nullable_to_non_nullable
as String,registrar: null == registrar ? _self.registrar : registrar // ignore: cast_nullable_to_non_nullable
as String,debenture_trustee: null == debenture_trustee ? _self.debenture_trustee : debenture_trustee // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _IssuerDetails implements IssuerDetails {
  const _IssuerDetails({required this.issuer_name, required this.type_of_issuer, required this.sector, required this.industry, required this.issuer_nature, required this.cin, required this.lead_manager, required this.registrar, required this.debenture_trustee});
  factory _IssuerDetails.fromJson(Map<String, dynamic> json) => _$IssuerDetailsFromJson(json);

@override final  String issuer_name;
@override final  String type_of_issuer;
@override final  String sector;
@override final  String industry;
@override final  String issuer_nature;
@override final  String cin;
@override final  String lead_manager;
@override final  String registrar;
@override final  String debenture_trustee;

/// Create a copy of IssuerDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IssuerDetailsCopyWith<_IssuerDetails> get copyWith => __$IssuerDetailsCopyWithImpl<_IssuerDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IssuerDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IssuerDetails&&(identical(other.issuer_name, issuer_name) || other.issuer_name == issuer_name)&&(identical(other.type_of_issuer, type_of_issuer) || other.type_of_issuer == type_of_issuer)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.industry, industry) || other.industry == industry)&&(identical(other.issuer_nature, issuer_nature) || other.issuer_nature == issuer_nature)&&(identical(other.cin, cin) || other.cin == cin)&&(identical(other.lead_manager, lead_manager) || other.lead_manager == lead_manager)&&(identical(other.registrar, registrar) || other.registrar == registrar)&&(identical(other.debenture_trustee, debenture_trustee) || other.debenture_trustee == debenture_trustee));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,issuer_name,type_of_issuer,sector,industry,issuer_nature,cin,lead_manager,registrar,debenture_trustee);

@override
String toString() {
  return 'IssuerDetails(issuer_name: $issuer_name, type_of_issuer: $type_of_issuer, sector: $sector, industry: $industry, issuer_nature: $issuer_nature, cin: $cin, lead_manager: $lead_manager, registrar: $registrar, debenture_trustee: $debenture_trustee)';
}


}

/// @nodoc
abstract mixin class _$IssuerDetailsCopyWith<$Res> implements $IssuerDetailsCopyWith<$Res> {
  factory _$IssuerDetailsCopyWith(_IssuerDetails value, $Res Function(_IssuerDetails) _then) = __$IssuerDetailsCopyWithImpl;
@override @useResult
$Res call({
 String issuer_name, String type_of_issuer, String sector, String industry, String issuer_nature, String cin, String lead_manager, String registrar, String debenture_trustee
});




}
/// @nodoc
class __$IssuerDetailsCopyWithImpl<$Res>
    implements _$IssuerDetailsCopyWith<$Res> {
  __$IssuerDetailsCopyWithImpl(this._self, this._then);

  final _IssuerDetails _self;
  final $Res Function(_IssuerDetails) _then;

/// Create a copy of IssuerDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? issuer_name = null,Object? type_of_issuer = null,Object? sector = null,Object? industry = null,Object? issuer_nature = null,Object? cin = null,Object? lead_manager = null,Object? registrar = null,Object? debenture_trustee = null,}) {
  return _then(_IssuerDetails(
issuer_name: null == issuer_name ? _self.issuer_name : issuer_name // ignore: cast_nullable_to_non_nullable
as String,type_of_issuer: null == type_of_issuer ? _self.type_of_issuer : type_of_issuer // ignore: cast_nullable_to_non_nullable
as String,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as String,industry: null == industry ? _self.industry : industry // ignore: cast_nullable_to_non_nullable
as String,issuer_nature: null == issuer_nature ? _self.issuer_nature : issuer_nature // ignore: cast_nullable_to_non_nullable
as String,cin: null == cin ? _self.cin : cin // ignore: cast_nullable_to_non_nullable
as String,lead_manager: null == lead_manager ? _self.lead_manager : lead_manager // ignore: cast_nullable_to_non_nullable
as String,registrar: null == registrar ? _self.registrar : registrar // ignore: cast_nullable_to_non_nullable
as String,debenture_trustee: null == debenture_trustee ? _self.debenture_trustee : debenture_trustee // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
