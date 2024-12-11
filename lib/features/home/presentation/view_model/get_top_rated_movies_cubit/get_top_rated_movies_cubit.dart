import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/home/data/repos/home_repo.dart';
import 'package:movies_app/features/home/presentation/view_model/get_top_rated_movies_cubit/get_top_rated_movies_state.dart';

class GetTopRatedMoviesCubit extends Cubit<GetTopRatedMoviesState> {
  GetTopRatedMoviesCubit(this.homeRepo) : super(GetTopRatedMoviesInitial());
  final HomeRepo homeRepo;
  getTopRatedMovies() async {
    emit(GetTopRatedMoviesLoading());
    var data = await homeRepo.getTopRatedMovies();
    data.fold(
      (failure) {
        emit(GetTopRatedMoviesFailure(errorMessage: failure.errorMessage));
      },
      (movies) {
        emit(GetTopRatedMoviesSuccess(movies: movies));
      },
    );
  }
}
