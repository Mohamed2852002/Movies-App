import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/popular_movies_list_item.dart';

class PopularMoviesSectionBody extends StatelessWidget {
  const PopularMoviesSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (context, index, realIndex) => const PopularMoviesListItem(),
      options: CarouselOptions(
        height: 320.h,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayCurve: Curves.linear,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 1000),
      ),
    );
  }
}
