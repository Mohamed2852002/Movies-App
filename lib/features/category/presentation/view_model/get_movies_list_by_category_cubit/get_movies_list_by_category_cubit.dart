import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/category/presentation/view_model/get_movies_list_by_category_cubit/get_movies_list_by_category_state.dart';

class GetMoviesListByCategoryCubit extends Cubit<GetMoviesListByCategoryState> {
  GetMoviesListByCategoryCubit() : super(GetMoviesListByCategoryInitial());
}
