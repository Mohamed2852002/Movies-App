import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/category/presentation/view_model/get_movies_list_by_category_cubit/get_movies_list_by_category_cubit.dart';
import 'package:movies_app/features/category/presentation/view_model/get_movies_list_by_category_cubit/get_movies_list_by_category_state.dart';
import 'package:movies_app/features/search/presentation/views/widgets/custom_list_item.dart';
import 'package:movies_app/features/search/presentation/views/widgets/no_movies_image_widget.dart';

class MoviesByCategoryBlocBuilder extends StatelessWidget {
  const MoviesByCategoryBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetMoviesListByCategoryCubit,
        GetMoviesListByCategoryState>(
      builder: (context, state) {
        if (state is GetMoviesListByCategorySuccess) {
          if (state.movies.isNotEmpty) {
            return ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16),
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemCount: state.movies.length,
              itemBuilder: (context, index) {
                return CustomListItem(movie: state.movies[index]);
              },
            );
          } else {
            return const NoMoviesImageWidget();
          }
        }
        if (state is GetMoviesListByCategoryLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetMoviesListByCategoryFailure) {
          return Center(
            child: Text(
              state.errorMessage,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        } else {
          return const NoMoviesImageWidget();
        }
      },
    );
  }
}
