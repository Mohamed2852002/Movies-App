import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/constants/constants.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/core/utils/app_router.dart';
import 'package:movies_app/core/utils/widgets/custom_loading_widget.dart';
import 'package:movies_app/features/watchlist/presentation/view_model/watch_list_cubit/watch_list_cubit.dart';
import 'package:movies_app/features/watchlist/presentation/view_model/watch_list_cubit/watch_list_state.dart';

class CustomMovieImage extends StatefulWidget {
  const CustomMovieImage(
      {super.key,
      required this.width,
      required this.height,
      this.bottomRadius = 5,
      required this.movieModel});
  final double width;
  final double height;
  final double bottomRadius;
  final MovieModel movieModel;

  @override
  State<CustomMovieImage> createState() => _CustomMovieImageState();
}

class _CustomMovieImageState extends State<CustomMovieImage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context)
                .push(AppRouter.kMovieDetailsView, extra: widget.movieModel);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(5.r),
              bottom: Radius.circular(widget.bottomRadius.r),
            ),
            child: CachedNetworkImage(
              imageUrl: '$kImagePath${widget.movieModel.posterPath}',
              width: widget.width.w,
              height: widget.height.h,
              fit: BoxFit.fill,
              placeholder: (context, url) => const CustomLoadingWidget(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
        BlocBuilder<WatchListCubit, WatchListState>(
          builder: (context, state) {
            return GestureDetector(
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
            );
          },
        ),
      ],
    );
  }
}
