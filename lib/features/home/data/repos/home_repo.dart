import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<MovieModel>>> getPopularMovies();
  Future<Either<Failure, List<MovieModel>>> getUpcomingMovies();
  Future<Either<Failure, List<MovieModel>>> getTopRatedMovies();
}
