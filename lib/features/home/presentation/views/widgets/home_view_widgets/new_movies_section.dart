import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/functions/setup_service_locator.dart';
import 'package:movies_app/features/home/data/repos/home_repo_impl.dart';
import 'package:movies_app/features/home/presentation/view_model/get_upcoming_movies_cubit/get_upcoming_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/new_movies_section_body.dart';

class NewMoviesSection extends StatelessWidget {
  const NewMoviesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetUpcomingMoviesCubit(getIt.get<HomeRepoImpl>())
        ..getUpcomingMovies(),
      child: Container(
        padding: REdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
        ),
        width: double.infinity,
        child: const NewMoviesSectionBody(),
      ),
    );
  }
}
