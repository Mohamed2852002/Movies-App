import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:movies_app/core/utils/api_service.dart';
import 'package:movies_app/features/home/data/repos/home_repo_impl.dart';
import 'package:movies_app/features/home/data/repos/movie_details_repo_impl.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      dio: Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      apiService: getIt.get<ApiService>(),
    ),
  );

  getIt.registerSingleton<MovieDetailsRepoImpl>(
    MovieDetailsRepoImpl(
      apiService: getIt.get<ApiService>(),
    ),
  );
}
