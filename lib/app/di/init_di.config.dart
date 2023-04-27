// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:countries/app/data/dio_app_api.dart' as _i6;
import 'package:countries/app/data/main_app_config.dart' as _i4;
import 'package:countries/app/domain/app_api.dart' as _i5;
import 'package:countries/app/domain/app_congif.dart' as _i3;
import 'package:countries/feature/main/data/country_repository_impl.dart'
    as _i8;
import 'package:countries/feature/main/domain/repository/country_repository.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _prod = 'prod';
const String _dev = 'dev';
const String _test = 'test';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.AppConfig>(
      _i4.ProdAppConfig(),
      registerFor: {_prod},
    );
    gh.singleton<_i3.AppConfig>(
      _i4.DevAppConfig(),
      registerFor: {_dev},
    );
    gh.singleton<_i3.AppConfig>(
      _i4.TestAppConfig(),
      registerFor: {_test},
    );
    gh.singleton<_i5.AppApi>(_i6.DioAppApi(gh<_i3.AppConfig>()));
    gh.singleton<_i7.CountryRepository>(
        _i8.CountryRepositoryImpl(gh<_i5.AppApi>()));
    return this;
  }
}
