import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/api_service.dart';
import 'package:movies_app/features/home/data/models/movie_details_model/movie_details_model.dart';
import 'package:movies_app/features/home/data/repos/movie_details_repo.dart';

class MovieDetailsRepoImpl implements MovieDetailsRepo {
  final ApiService apiService;

  MovieDetailsRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, MovieDetailsModel>> getMovieDetails(
      {required int movieId}) async {
    String endPoint = 'movie/$movieId?language=en-US';

    try {
      var data = await apiService.get(endPoint);
      MovieDetailsModel movie = MovieDetailsModel.fromJson(data);
      return right(movie);
    } on DioException catch (error) {
      return left(ServerFailure.fromDioException(error));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getSimilarMovies(
      {required int movieId}) async {
    String endPoint = 'movie/$movieId/similar?language=en-US&page=1';
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
