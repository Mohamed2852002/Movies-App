import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/home/data/repos/movie_details_repo.dart';
import 'package:movies_app/features/home/presentation/view_model/get_similar_movies_cubit/get_similar_movies_state.dart';

class GetSimilarMoviesCubit extends Cubit<GetSimilarMoviesState> {
  GetSimilarMoviesCubit(this.movieDetailsRepo)
      : super(GetSimilarMoviesInitial());
  final MovieDetailsRepo movieDetailsRepo;
  getSimilarMovies({required int movieId}) async {
    var data = await movieDetailsRepo.getSimilarMovies(movieId: movieId);
    data.fold(
      (failure) {
        emit(GetSimilarMoviesFailure(errorMessage: failure.errorMessage));
      },
      (movies) {
        emit(GetSimilarMoviesSuccess(movies: movies));
      },
    );
  }
}
