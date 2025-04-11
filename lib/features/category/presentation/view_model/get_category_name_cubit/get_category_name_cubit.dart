import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/category/data/repos/category_repo.dart';
import 'package:movies_app/features/category/presentation/view_model/get_category_name_cubit/get_category_name_state.dart';

class GetCategoryNameCubit extends Cubit<GetCategoryNameState> {
  GetCategoryNameCubit(this.categoryRepo) : super(GetCategoryNameInitial());
  final CategoryRepo categoryRepo;

  Future<void> getCategoryName() async {
    emit(GetCategoryNameLoading());
    final result = await categoryRepo.getCategoryName();
    result.fold(
      (failure) {
        emit(GetCategoryNameFailure(errorMessage: failure.errorMessage));
      },
      (categories) {
        emit(GetCategoryNameSuccess(categories: categories));
      },
    );
  }
}
