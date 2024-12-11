import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/core/utils/functions/setup_service_locator.dart';
import 'package:movies_app/features/home/data/repos/home_repo_impl.dart';
import 'package:movies_app/features/home/presentation/view_model/get_top_rated_movies_cubit/get_top_rated_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/recommended_movies_list_view.dart';

class RecommendedMoviesSectionBody extends StatelessWidget {
  const RecommendedMoviesSectionBody({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetTopRatedMoviesCubit(getIt.get<HomeRepoImpl>())
        ..getTopRatedMovies(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: REdgeInsets.only(left: 27),
            child: Text(
              'Recommended',
              style: Styles.textStyle16,
            ),
          ),
          const RecommendedMoviesListView(),
        ],
      ),
    );
  }
}
