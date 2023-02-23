// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/repository/movies_repository_impl.dart' as _i6;
import '../domain/data_source/movies_data_source.dart' as _i4;
import '../domain/repositories/movies_repository.dart' as _i5;
import '../domain/use_cases/get_movies_use_case.dart' as _i7;
import '../presentation/pages/home/cubit/home_cubit.dart' as _i8;
import 'modules/dio_module.dart' as _i9;
import 'modules/movies_data_source_module.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dioModule = _$DioModule();
  final moviesDataSourceModule = _$MoviesDataSourceModule();
  gh.singleton<_i3.Dio>(
    dioModule.client,
    instanceName: 'netflixDio',
  );
  gh.factory<_i4.MoviesDataSource>(() => moviesDataSourceModule
      .parseDataSource(get<_i3.Dio>(instanceName: 'netflixDio')));
  gh.factory<_i5.MoviesRepository>(
      () => _i6.MoviesRepositoryImpl(get<_i4.MoviesDataSource>()));
  gh.factory<_i7.GetMoviesUseCase>(
      () => _i7.GetMoviesUseCase(get<_i5.MoviesRepository>()));
  gh.factory<_i8.HomeCubit>(() => _i8.HomeCubit(get<_i7.GetMoviesUseCase>()));
  return get;
}

class _$DioModule extends _i9.DioModule {}

class _$MoviesDataSourceModule extends _i10.MoviesDataSourceModule {}
