import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/functions/setup_service_locator.dart';
import 'package:movies_app/features/category/data/models/category/category_model.dart';
import 'package:movies_app/features/category/presentation/view_model/get_movies_list_by_category_cubit/get_movies_list_by_category_cubit.dart';
import 'package:movies_app/features/category/presentation/views/widgets/movies_by_category_bloc_builder.dart';

class MoviesByCategoryView extends StatelessWidget {
  const MoviesByCategoryView({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetMoviesListByCategoryCubit(getIt.get())
        ..getMoviesListByCategory(
          categoryId: categoryModel.id.toString(),
        ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(categoryModel.name ?? 'No Category Name'),
        ),
        body: const MoviesByCategoryBlocBuilder(),
      ),
    );
  }
}
