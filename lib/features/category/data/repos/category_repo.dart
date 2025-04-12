import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/features/category/data/models/category/category_model.dart';

abstract class CategoryRepo {
  Future<Either<Failure, List<CategoryModel>>> getCategoryName();
  Future<Either<Failure, List<MovieModel>>> getMovieListByCategory(
      {required String categoryId});
}
