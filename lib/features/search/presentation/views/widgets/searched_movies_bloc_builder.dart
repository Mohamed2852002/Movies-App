import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/features/search/presentation/view_model/get_searched_movies_cubit/get_searched_movies_cubit.dart';
import 'package:movies_app/features/search/presentation/view_model/get_searched_movies_cubit/get_searched_movies_state.dart';
import 'package:movies_app/features/search/presentation/views/widgets/custom_list_item.dart';
import 'package:movies_app/features/search/presentation/views/widgets/no_movies_image_widget.dart';

class SearchedMoviesBlocBuilder extends StatelessWidget {
  const SearchedMoviesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetSearchedMoviesCubit, GetSearchedMoviesState>(
      builder: (context, state) {
        if (state is GetSearchedMoviesSuccess) {
          if (state.searchedMovies.isNotEmpty) {
            return ListView.separated(
              padding: const EdgeInsets.only(bottom: 8),
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemCount: state.searchedMovies.length,
              itemBuilder: (context, index) {
                return CustomListItem(movie: state.searchedMovies[index]);
              },
            );
          } else {
            return const NoMoviesImageWidget();
          }
        } else if (state is GetSearchedMoviesLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GetSearchedMoviesFailure) {
          return Center(
            child: Text(
              state.errorMessage,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          );
        }
        return const NoMoviesImageWidget();
      },
    );
  }
}
