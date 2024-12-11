import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/home/data/repos/home_repo.dart';
import 'package:movies_app/features/home/presentation/view_model/get_popular_movies_cubit/get_popular_movies_state.dart';

class GetPopularMoviesCubit extends Cubit<GetPopularMoviesState> {
  GetPopularMoviesCubit(this.homeRepo) : super(GetPopularMoviesInitial());
  final HomeRepo homeRepo;
  getPopularMovies() async {
    emit(GetPopularMoviesLoading());
    var data = await homeRepo.getPopularMovies();
    data.fold(
      (failure) {
        emit(GetPopularMoviesFailure(errorMessage: failure.errorMessage));
      },
      (movies) {
        emit(GetPopularMoviesSuccess(movies: movies));
      },
    );
  }
}
