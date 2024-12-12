import 'package:movies_app/features/category/data/models/category/category_model.dart';

class GetCategoryNameState {}

final class GetCategoryNameInitial extends GetCategoryNameState {}

final class GetCategoryNameLoading extends GetCategoryNameState {}

final class GetCategoryNameSuccess extends GetCategoryNameState {
  final List<CategoryModel> categories;

  GetCategoryNameSuccess({required this.categories});
}

final class GetCategoryNameFailure extends GetCategoryNameState {
  final String errorMessage;

  GetCategoryNameFailure({required this.errorMessage});
}
