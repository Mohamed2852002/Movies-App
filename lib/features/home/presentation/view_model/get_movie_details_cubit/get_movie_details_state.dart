import 'package:movies_app/core/models/movie_model/movie_model.dart';

class GetMovieDetailsState {}

final class GetMovieDetailsInitial extends GetMovieDetailsState {}

final class GetMovieDetailsLoading extends GetMovieDetailsState {}

final class GetMovieDetailsSuccess extends GetMovieDetailsState {
  final MovieModel movie;

  GetMovieDetailsSuccess({required this.movie});
}

final class GetMovieDetailsFailure extends GetMovieDetailsState {
  final String errorMessage;

  GetMovieDetailsFailure({required this.errorMessage});
}
