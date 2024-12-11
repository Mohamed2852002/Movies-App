import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/home/data/repos/movie_details_repo.dart';
import 'package:movies_app/features/home/presentation/view_model/get_movie_details_cubit/get_movie_details_state.dart';

class GetMovieDetailsCubit extends Cubit<GetMovieDetailsState> {
  GetMovieDetailsCubit(this.movieDetailsRepo) : super(GetMovieDetailsInitial());
  final MovieDetailsRepo movieDetailsRepo;
  getMovieDetails({required int movieId}) async {
    emit(GetMovieDetailsLoading());
    var data = await movieDetailsRepo.getMovieDetails(movieId: movieId);
    data.fold(
      (failure) {
        emit(GetMovieDetailsFailure(errorMessage: failure.errorMessage));
      },
      (movie) {
        emit(GetMovieDetailsSuccess(movie: movie));
      },
    );
  }
}
