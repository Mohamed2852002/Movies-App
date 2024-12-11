import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/widgets/custom_error_widget.dart';
import 'package:movies_app/features/home/presentation/view_model/get_similar_movies_cubit/get_similar_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/view_model/get_similar_movies_cubit/get_similar_movies_state.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/recommended_movies_list_item.dart';

class SimilarMoviesListView extends StatelessWidget {
  const SimilarMoviesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetSimilarMoviesCubit, GetSimilarMoviesState>(
      builder: (context, state) {
        if (state is GetSimilarMoviesSuccess) {
          return RSizedBox(
            height: 200,
            child: ListView.separated(
              padding: REdgeInsets.only(left: 24, top: 16),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  RecommendedMoviesListItem(movieModel: state.movies[index]),
              separatorBuilder: (context, index) => const RSizedBox(width: 14),
              itemCount: state.movies.length,
            ),
          );
        } else if (state is GetSimilarMoviesFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
