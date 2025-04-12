import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/category/data/repos/category_repo.dart';
import 'package:movies_app/features/category/presentation/view_model/get_movies_list_by_category_cubit/get_movies_list_by_category_state.dart';

class GetMoviesListByCategoryCubit extends Cubit<GetMoviesListByCategoryState> {
  GetMoviesListByCategoryCubit(this.categoryRepo) : super(GetMoviesListByCategoryInitial());
  final CategoryRepo categoryRepo;

  Future<void> getMoviesListByCategory({required String categoryId}) async {
    emit(GetMoviesListByCategoryLoading());
    final result = await categoryRepo.getMovieListByCategory(categoryId: categoryId);
    result.fold(
      (failure) {
        emit(GetMoviesListByCategoryFailure(errorMessage: failure.errorMessage));
      },
      (movies) {
        emit(GetMoviesListByCategorySuccess(movies: movies));
      },
    );
  }
}
