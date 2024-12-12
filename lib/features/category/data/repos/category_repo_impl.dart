import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_entity.dart';
import 'package:movies_app/features/category/data/models/category/category_response.dart';
import 'package:movies_app/features/category/data/repos/category_repo.dart';

class CategoryRepoImpl extends CategoryRepo {
  @override
  Future<Either<Failure, CategoryResponse>> getCategoryName() {
    // TODO: implement getCategoryName
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getMovieListByCategory() {
    // TODO: implement getMovieListByCategory
    throw UnimplementedError();
  }
}
