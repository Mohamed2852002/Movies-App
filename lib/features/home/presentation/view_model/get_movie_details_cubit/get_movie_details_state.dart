import 'package:movies_app/features/home/data/models/movie_details_model/movie_details_model.dart';

class GetMovieDetailsState {}

final class GetMovieDetailsInitial extends GetMovieDetailsState {}

final class GetMovieDetailsLoading extends GetMovieDetailsState {}

final class GetMovieDetailsSuccess extends GetMovieDetailsState {
  final MovieDetailsModel movie;

  GetMovieDetailsSuccess({required this.movie});
}

final class GetMovieDetailsFailure extends GetMovieDetailsState {
  final String errorMessage;

  GetMovieDetailsFailure({required this.errorMessage});
}
