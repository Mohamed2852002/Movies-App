import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/constants/constants.dart';
import 'package:movies_app/core/models/movie_model.dart';
import 'package:movies_app/core/utils/app_router.dart';
import 'package:movies_app/core/utils/widgets/custom_loading_widget.dart';

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
  bool isSelected = false;
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
              imageUrl:
                  'https://image.tmdb.org/t/p/original${widget.movieModel.posterPath}',
              width: widget.width.w,
              height: widget.height.h,
              fit: BoxFit.fill,
              placeholder: (context, url) => const CustomLoadingWidget(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            isSelected = !isSelected;
            setState(() {});
          },
          child: SvgPicture.asset(
            isSelected ? kBookmarkSelected : kBookmark,
          ),
        ),
      ],
    );
  }
}
