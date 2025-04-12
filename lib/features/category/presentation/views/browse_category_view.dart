import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/core/utils/functions/setup_service_locator.dart';
import 'package:movies_app/features/category/data/repos/category_repo.dart';
import 'package:movies_app/features/category/presentation/view_model/get_category_name_cubit/get_category_name_cubit.dart';
import 'package:movies_app/features/category/presentation/views/widgets/category_list_bloc_builder.dart';

class BrowseCategoryView extends StatelessWidget {
  const BrowseCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetCategoryNameCubit(getIt<CategoryRepo>())..getCategoryName(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 30),
            child: Text(
              'Browse Category',
              style: Styles.textStyle22,
            ),
          ),
          const SizedBox(height: 16),
          const CategoryListBlocBuilder(),
        ],
      ),
    );
  }
}
