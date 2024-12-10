import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/features/home/data/repos/movie_details_repo.dart';

class MovieDetailsRepoImpl implements MovieDetailsRepo {
  @override
  Future<MovieModel> getMovieDetails() {
    // TODO: implement getMovieDetails
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<MovieModel>>> getSimilarMovie() {
    // TODO: implement getSimilarMovie
    throw UnimplementedError();
  }
}
