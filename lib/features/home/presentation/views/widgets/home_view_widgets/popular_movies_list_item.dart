import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/styles/styles.dart';
import 'package:movies_app/core/utils/app_router.dart';
import 'package:movies_app/core/utils/widgets/custom_movie_image.dart';
import 'package:movies_app/features/home/presentation/views/widgets/home_view_widgets/custom_movie_image_preview.dart';

class PopularMoviesListItem extends StatelessWidget {
  const PopularMoviesListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kMovieDetailsView);
      },
      child: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomMovieImagePreview(),
          ),
          Positioned(
            left: 20.w,
            bottom: 0,
            child: const CustomMovieImage(
              width: 130,
              height: 200,
            ),
          ),
          Positioned(
            left: 170.w,
            bottom: 35.h,
            child: RSizedBox(
              width: 200,
              child: Text(
                'Dora and the lost city of gold',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle16,
              ),
            ),
          ),
          Positioned(
            left: 170.w,
            bottom: 10.h,
            child: Text(
              '2019  PG-13  2h 7m',
              style: Styles.textStyle14
                  .copyWith(color: Theme.of(context).colorScheme.onPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
