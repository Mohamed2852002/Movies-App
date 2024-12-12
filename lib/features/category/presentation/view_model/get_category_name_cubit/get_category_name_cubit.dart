import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/category/presentation/view_model/get_category_name_cubit/get_category_name_state.dart';

class GetCategoryNameCubit extends Cubit<GetCategoryNameState> {
  GetCategoryNameCubit() : super(GetCategoryNameInitial());
}
