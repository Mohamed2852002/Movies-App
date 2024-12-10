import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/features/search/data/repos/search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  @override
  Future<Either<Failure, List<MovieModel>>> getSearchedMovies() {
    // TODO: implement getSearchedMovies
    throw UnimplementedError();
  }
  
}