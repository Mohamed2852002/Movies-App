import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/constants/constants.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/features/watchlist/presentation/view_model/watch_list_cubit/watch_list_cubit.dart';

class CustomMovieDetailsImage extends StatefulWidget {
  const CustomMovieDetailsImage(
      {super.key, required this.movieModel});
  final MovieModel movieModel;
  @override
  State<CustomMovieDetailsImage> createState() =>
      _CustomMovieDetailsImageState();
}

class _CustomMovieDetailsImageState extends State<CustomMovieDetailsImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5.r),
          child: CachedNetworkImage(
            imageUrl: '$kImagePath${widget.movieModel.posterPath}',
            width: 130.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              if (context
                  .read<WatchListCubit>()
                  .watchListBox
                  .containsKey(widget.movieModel.id)) {
                context.read<WatchListCubit>().removeMovieFromWatchList(
                      movieId: widget.movieModel.id ?? 0,
                    );
              } else {
                context.read<WatchListCubit>().addMovieToWatchList(
                      movie: widget.movieModel,
                      movieId: widget.movieModel.id ?? 0,
                    );
              }
            });
          },
          child: SvgPicture.asset(
            context
                    .read<WatchListCubit>()
                    .watchListBox
                    .containsKey(widget.movieModel.id)
                ? kBookmarkSelected
                : kBookmark,
          ),
        ),
      ],
    );
  }
}
