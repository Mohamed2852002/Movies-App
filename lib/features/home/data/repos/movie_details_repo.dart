import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/features/home/data/models/movie_details_model/movie_details_model.dart';

abstract class MovieDetailsRepo {
  Future<Either<Failure, MovieDetailsModel>> getMovieDetails(
      {required int movieId});
  Future<Either<Failure, List<MovieModel>>> getSimilarMovies(
      {required int movieId});
}
