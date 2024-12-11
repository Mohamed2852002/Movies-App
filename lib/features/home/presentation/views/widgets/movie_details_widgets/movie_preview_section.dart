import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/widgets/custom_error_widget.dart';
import 'package:movies_app/features/home/presentation/view_model/get_movie_details_cubit/get_movie_details_cubit.dart';
import 'package:movies_app/features/home/presentation/view_model/get_movie_details_cubit/get_movie_details_state.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/custom_movie_image_preview.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/movie_name_and_info_widget.dart';

class MoviePreviewSection extends StatelessWidget {
  const MoviePreviewSection({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetMovieDetailsCubit, GetMovieDetailsState>(
      builder: (context, state) {
        if (state is GetMovieDetailsSuccess) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomMovieImagePreview(
                image: state.movie.posterPath ?? '',
              ),
              MovieNameAndInfoWidget(movieModel: state.movie),
            ],
          );
        } else if (state is GetMovieDetailsFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
