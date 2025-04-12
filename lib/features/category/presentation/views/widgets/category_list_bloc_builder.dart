import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/category/presentation/view_model/get_category_name_cubit/get_category_name_cubit.dart';
import 'package:movies_app/features/category/presentation/view_model/get_category_name_cubit/get_category_name_state.dart';
import 'package:movies_app/features/category/presentation/views/widgets/category_widget.dart';

class CategoryListBlocBuilder extends StatelessWidget {
  const CategoryListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCategoryNameCubit, GetCategoryNameState>(
      builder: (context, state) {
        if (state is GetCategoryNameSuccess) {
          if (state.categories.isNotEmpty) {
            return Expanded(
              child: GridView.builder(
                itemCount: state.categories.length,
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  mainAxisExtent: 90,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return CategoryWidget(categoryModel: state.categories[index]);
                },
              ),
            );
          } else {
            return const Expanded(
              child: Center(
                child: Text(
                  'No Categories Found',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          }
        } else if (state is GetCategoryNameLoading) {
          return const Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is GetCategoryNameFailure) {
          return Expanded(
            child: Center(
              child: Text(
                state.errorMessage,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        } else {
          return const Expanded(
            child: Center(
              child: Text(
                'No Categories Found',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
