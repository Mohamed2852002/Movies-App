import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_entity.dart';
import 'package:movies_app/features/category/data/models/category/category_response.dart';

abstract class CategoryRepo {
  Future<Either<Failure, CategoryResponse>> getCategoryName();
  Future<Either<Failure, List<MovieEntity>>> getMovieListByCategory();
}
