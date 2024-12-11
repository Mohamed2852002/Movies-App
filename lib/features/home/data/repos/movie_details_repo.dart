import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';

abstract class MovieDetailsRepo {
  Future<Either<Failure, MovieModel>> getMovieDetails({required int movieId});
  Future<Either<Failure, List<MovieModel>>> getSimilarMovies(
      {required int movieId});
}
