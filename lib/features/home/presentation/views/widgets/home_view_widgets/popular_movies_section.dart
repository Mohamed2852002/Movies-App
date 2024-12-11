import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/functions/setup_service_locator.dart';
import 'package:movies_app/features/home/data/repos/home_repo_impl.dart';
import 'package:movies_app/features/home/presentation/view_model/get_popular_movies_cubit/get_popular_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/popular_movies_section_body.dart';

class PopularMoviesSection extends StatelessWidget {
  const PopularMoviesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetPopularMoviesCubit(
        getIt.get<HomeRepoImpl>(),
      )..getPopularMovies(),
      child: RSizedBox(
        height: 320.h,
        width: double.infinity,
        child: const PopularMoviesSectionBody(),
      ),
    );
  }
}
