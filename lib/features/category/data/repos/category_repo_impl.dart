import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/core/utils/api_service.dart';
import 'package:movies_app/features/category/data/models/category/category_model.dart';
import 'package:movies_app/features/category/data/repos/category_repo.dart';

class CategoryRepoImpl extends CategoryRepo {
  ApiService apiService;
  CategoryRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<CategoryModel>>> getCategoryName() async {
    const String endPoint = 'genre/movie/list?language=en';
    List<CategoryModel> categories = [];

    try {
      var data = await apiService.get(endPoint);
      for (var element in data['genres']) {
        categories.add(CategoryModel.fromJson(element));
      }
      return right(categories);
    } on DioException catch (error) {
      return left(ServerFailure.fromDioException(error));
    }
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getMovieListByCategory({
    required String categoryId}) async {
    String endPoint = 'discover/movie?with_genres=$categoryId';
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
