import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/widgets/custom_error_widget.dart';
import 'package:movies_app/features/home/presentation/view_model/get_top_rated_movies_cubit/get_top_rated_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/view_model/get_top_rated_movies_cubit/get_top_rated_movies_state.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/custom_movies_list_item.dart';

class RecommendedMoviesListView extends StatelessWidget {
  const RecommendedMoviesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetTopRatedMoviesCubit, GetTopRatedMoviesState>(
      builder: (context, state) {
        if (state is GetTopRatedMoviesSuccess) {
          return RSizedBox(
            height: 200,
            child: ListView.separated(
              padding: REdgeInsets.only(left: 24, top: 16),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  CustomMoviesListItem(movieModel: state.movies[index]),
              separatorBuilder: (context, index) => const RSizedBox(width: 14),
              itemCount: state.movies.length,
            ),
          );
        } else if (state is GetTopRatedMoviesFailure) {
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
