import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/recommended_movies_section.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/movie_information_section.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/movie_preview_section.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dora and the lost city of gold",
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MoviePreviewSection(),
            MovieInformationSection(),
            RSizedBox(height: 18),
            RecommendedMoviesSection(text: 'More Like This'),
          ],
        ),
      ),
    );
  }
}
