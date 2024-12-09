import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/popular_movies_section_body.dart';

class PopularMoviesSection extends StatelessWidget {
  const PopularMoviesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: 320.h,
      width: double.infinity,
      child: const PopularMoviesSectionBody(),
    );
  }
}
