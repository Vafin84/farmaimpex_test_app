// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:farmaimpex_test_app/core/data/dio_app_api.dart' as _i13;
import 'package:farmaimpex_test_app/core/data/main_app_config.dart' as _i4;
import 'package:farmaimpex_test_app/core/domain/app_api.dart' as _i12;
import 'package:farmaimpex_test_app/core/domain/app_config.dart' as _i3;
import 'package:farmaimpex_test_app/core/routes/app_router.dart' as _i5;
import 'package:farmaimpex_test_app/core/services/hive_service.dart' as _i10;
import 'package:farmaimpex_test_app/core/services/validation_service.dart'
    as _i11;
import 'package:farmaimpex_test_app/features/auth/data/repositories/mock_auth_repository.dart'
    as _i7;
import 'package:farmaimpex_test_app/features/auth/domain/repositories/auth_repository.dart'
    as _i6;
import 'package:farmaimpex_test_app/features/auth/presentation/cubit/auth_cubit.dart'
    as _i14;
import 'package:farmaimpex_test_app/features/contacts/data/datasources/contact_local_data_source_impl.dart'
    as _i9;
import 'package:farmaimpex_test_app/features/contacts/data/datasources/contact_remote_data_source_impl.dart'
    as _i16;
import 'package:farmaimpex_test_app/features/contacts/data/repositories/contact_repository_impl.dart'
    as _i18;
import 'package:farmaimpex_test_app/features/contacts/domain/datasources/contact_local_data_source.dart'
    as _i8;
import 'package:farmaimpex_test_app/features/contacts/domain/datasources/contact_remote_data_source.dart'
    as _i15;
import 'package:farmaimpex_test_app/features/contacts/domain/repositories/contact_repository.dart'
    as _i17;
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
    gh.singleton<_i5.AppRouter>(_i5.AppRouter());
    gh.factory<_i6.AuthRepository>(() => _i7.MockAuthRepository());
    gh.factory<_i8.ContactLocalDataSource>(
        () => _i9.ContactLocalDataSourceImpl());
    gh.singleton<_i10.HiveService>(_i10.HiveService());
    gh.singleton<_i11.ValidationService>(_i11.ValidationService());
    gh.singleton<_i12.AppApi>(_i13.DioAppApi(gh<_i3.AppConfig>()));
    gh.singleton<_i14.AuthCubit>(_i14.AuthCubit(gh<_i6.AuthRepository>()));
    gh.factory<_i15.ContactRemoteDataSource>(
        () => _i16.ContactRemoteDataSourceImpl(gh<_i12.AppApi>()));
    gh.factory<_i17.ContactRepository>(() => _i18.ContactRepositoryImpl(
          gh<_i15.ContactRemoteDataSource>(),
          gh<_i8.ContactLocalDataSource>(),
          gh<_i3.AppConfig>(),
        ));
    return this;
  }
}
