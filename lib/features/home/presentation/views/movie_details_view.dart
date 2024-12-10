import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/movie_information_section.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/movie_preview_section.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/similar_movies_section.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key, required this.movieModel});
  final MovieModel movieModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dora and the lost city of gold",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MoviePreviewSection(movieModel: movieModel),
            const MovieInformationSection(),
            const RSizedBox(height: 18),
            const SimilarMoviesSection(),
          ],
        ),
      ),
    );
  }
}
