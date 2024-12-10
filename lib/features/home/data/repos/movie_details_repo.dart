import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_model.dart';

abstract class MovieDetailsRepo {
  Future<MovieModel> getMovieDetails();
  Future<Either<Failure, List<MovieModel>>> getSimilarMovie();
}
