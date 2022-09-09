// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i9;
import '../../../application/fastlafe/fast_lafe_bloc.dart' as _i10;
import '../../../application/home/home_bloc.dart' as _i11;
import '../../../application/hotandnew/hot_and_new_bloc.dart' as _i12;
import '../../../application/search/search_bloc.dart' as _i13;
import '../../../infrastructure/downlods/downloads_repostry.dart' as _i6;
import '../../../infrastructure/hotandnew/hotandnewimpl.dart' as _i4;
import '../../../infrastructure/search/search_repo.dart' as _i8;
import '../../downlods/i_download_resp.dart' as _i5;
import '../../hotandnew/model/hotandnewservises.dart' as _i3;
import '../../search/search_sevice.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.HotAndNewServises>(() => _i4.HotandNewImplemetation());
  gh.lazySingleton<_i5.IDownloadsRepo>(() => _i6.DownloadsRepository());
  gh.lazySingleton<_i7.SearchService>(() => _i8.SearchImpl());
  gh.factory<_i9.DownloadsBloc>(
      () => _i9.DownloadsBloc(get<_i5.IDownloadsRepo>()));
  gh.factory<_i10.FastLafeBloc>(
      () => _i10.FastLafeBloc(get<_i5.IDownloadsRepo>()));
  gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(get<_i3.HotAndNewServises>()));
  gh.factory<_i12.HotAndNewBloc>(
      () => _i12.HotAndNewBloc(get<_i3.HotAndNewServises>()));
  gh.factory<_i13.SearchBloc>(() =>
      _i13.SearchBloc(get<_i5.IDownloadsRepo>(), get<_i7.SearchService>()));
  return get;
}
