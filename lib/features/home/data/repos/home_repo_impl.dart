import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/api_service.dart';
import 'package:movies_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<MovieModel>>> getPopularMovies() async {
    const String endPoint = 'movie/popular?language=en-US&page=1';
    List<MovieModel> movies = [];
    try {
      var data = await apiService.get(endPoint);
      for (var element in data['results']) {
        movies.add(MovieModel.fromJson(element));
      }
      return right(movies);
    } on DioException catch (error) {
      return left(ServerFailure.fromDioException(error));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies() async {
    const String endPoint = 'movie/top_rated?language=en-US&page=1';
    List<MovieModel> movies = [];
    try {
      var data = await apiService.get(endPoint);
      for (var element in data['results']) {
        movies.add(MovieModel.fromJson(element));
      }
      return right(movies);
    } on DioException catch (error) {
      return left(ServerFailure.fromDioException(error));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getUpcomingMovies() async {
    const String endPoint = 'movie/upcoming?language=en-US&page=1';
    List<MovieModel> movies = [];
    try {
      var data = await apiService.get(endPoint);
      for (var element in data['results']) {
        movies.add(MovieModel.fromJson(element));
      }
      return right(movies);
    } on DioException catch (error) {
      return left(ServerFailure.fromDioException(error));
    }
  }
}
