import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/widgets/custom_error_widget.dart';
import 'package:movies_app/features/home/presentation/view_model/get_popular_movies_cubit/get_popular_movies_cubit.dart';
import 'package:movies_app/features/home/presentation/view_model/get_popular_movies_cubit/get_popular_movies_state.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/popular_movies_list_item.dart';

class PopularMoviesSectionBody extends StatelessWidget {
  const PopularMoviesSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetPopularMoviesCubit, GetPopularMoviesState>(
      builder: (context, state) {
        if (state is GetPopularMoviesSuccess) {
          return CarouselSlider.builder(
            itemCount: state.movies.length,
            itemBuilder: (context, index, realIndex) =>
                PopularMoviesListItem(movieModel: state.movies[index]),
            options: CarouselOptions(
              height: 320.h,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayCurve: Curves.linear,
              autoPlayInterval: const Duration(seconds: 5),
              autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            ),
          );
        } else if (state is GetPopularMoviesFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
