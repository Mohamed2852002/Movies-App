import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/core/utils/api_service.dart';
import 'package:movies_app/features/search/data/repos/search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  final ApiService apiService;
  SearchRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<MovieModel>>> getSearchedMovies(
      {required String query}) async {
    String endPoint =
        'search/movie?query=$query&include_adult=false&language=en-US&page=1';
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
