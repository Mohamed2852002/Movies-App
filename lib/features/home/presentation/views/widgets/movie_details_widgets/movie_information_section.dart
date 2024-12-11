import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/widgets/custom_error_widget.dart';
import 'package:movies_app/features/home/presentation/view_model/get_movie_details_cubit/get_movie_details_cubit.dart';
import 'package:movies_app/features/home/presentation/view_model/get_movie_details_cubit/get_movie_details_state.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/custom_movie_details_image.dart';
import 'package:movies_app/features/home/presentation/views/widgets/movie_details_widgets/movie_specifications.dart';

class MovieInformationSection extends StatelessWidget {
  const MovieInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetMovieDetailsCubit, GetMovieDetailsState>(
      builder: (context, state) {
        if (state is GetMovieDetailsSuccess) {
          return Padding(
            padding: REdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomMovieDetailsImage(
                  image: state.movie.posterPath ?? '',
                ),
                MovieSpecifications(movieDetailsModel: state.movie),
              ],
            ),
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
