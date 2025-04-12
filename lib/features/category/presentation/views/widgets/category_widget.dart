import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/core/utils/app_router.dart';
import 'package:movies_app/features/category/data/models/category/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.kMoviesListByCategory, extra: categoryModel);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/icons/logo.png', fit: BoxFit.fill),
          Text(
            categoryModel.name ?? 'No Category Name',
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
