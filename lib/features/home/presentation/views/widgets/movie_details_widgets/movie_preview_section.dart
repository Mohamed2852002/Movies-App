import 'package:flutter/material.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/custom_movie_image_preview.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/movie_name_and_info_widget.dart';

class MoviePreviewSection extends StatelessWidget {
  const MoviePreviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomMovieImagePreview(),
        MovieNameAndInfoWidget(),
      ],
    );
  }
}
