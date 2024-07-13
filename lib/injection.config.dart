// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:task147/core/netwrok/network_service.dart' as _i3;
import 'package:task147/core/netwrok/network_service_impl.dart' as _i4;
import 'package:task147/data/product_repository_impl.dart' as _i6;
import 'package:task147/repository/product_repository.dart' as _i5;
import 'package:task147/view/product_cubit.dart' as _i7;

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
    gh.lazySingleton<_i3.NetworkService>(() => _i4.NetworkServiceImpl());
    gh.lazySingleton<_i5.ProductRepository>(
        () => _i6.ProductRepositoryImpl(gh<_i3.NetworkService>()));
    gh.factory<_i7.ProductCubit>(
        () => _i7.ProductCubit(gh<_i5.ProductRepository>()));
    return this;
  }
}
