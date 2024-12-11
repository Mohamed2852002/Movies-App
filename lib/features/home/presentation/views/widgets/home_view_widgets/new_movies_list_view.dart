import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/widgets/custom_error_widget.dart';
import 'package:movies_app/core/utils/widgets/custom_movie_image.dart';
import 'package:movies_app/features/home/presentation/view_model/get_upcoming_movies_cubit/get_upcoming_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/view_model/get_upcoming_movies_cubit/get_upcoming_movies_state.dart';

class NewMoviesListView extends StatelessWidget {
  const NewMoviesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUpcomingMoviesCubit, GetUpcomingMoviesState>(
      builder: (context, state) {
        if (state is GetUpcomingMoviesSuccess) {
          return RSizedBox(
            height: 128,
            child: ListView.separated(
              padding: REdgeInsets.only(left: 27),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomMovieImage(
                width: 95,
                height: 127,
                movieModel: state.movies[index],
              ),
              separatorBuilder: (context, index) => const RSizedBox(width: 14),
              itemCount: state.movies.length,
            ),
          );
        } else if (state is GetUpcomingMoviesFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
