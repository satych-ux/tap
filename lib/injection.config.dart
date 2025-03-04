// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:tap_1/injection.dart' as _i254;
import 'package:tap_1/src/features/company_details/cubit/company_detail_cubit.dart'
    as _i146;
import 'package:tap_1/src/features/home/cubit/company_list_cubit.dart' as _i299;
import 'package:tap_1/src/repositories/company_details/company_detail_repo_impl.dart'
    as _i373;
import 'package:tap_1/src/repositories/company_details/company_detail_repo_service.dart'
    as _i558;
import 'package:tap_1/src/repositories/company_list/company_list_repo_impl.dart'
    as _i468;
import 'package:tap_1/src/repositories/company_list/company_list_repo_service.dart'
    as _i395;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt $initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.factory<_i558.ICompanyDetailRepository>(
      () => _i373.CompanyDetailRepository(),
    );
    gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
    gh.factory<_i395.ICompanyListRepository>(
      () => _i468.CompanyListRepository(
        gh<_i361.Dio>(),
        gh<String>(instanceName: 'BaseUrl'),
      ),
    );
    gh.factory<_i146.CompanyDetailCubit>(
      () => _i146.CompanyDetailCubit(gh<_i558.ICompanyDetailRepository>()),
    );
    gh.lazySingleton<_i299.CompanyListCubit>(
      () => _i299.CompanyListCubit(gh<_i395.ICompanyListRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i254.RegisterModule {}
