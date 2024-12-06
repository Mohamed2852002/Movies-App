import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/core/constants/constants.dart';
import 'package:movies_app/core/utils/app_router.dart';

class CustomMovieImage extends StatefulWidget {
  const CustomMovieImage(
      {super.key,
      required this.width,
      required this.height,
      this.bottomRadius = 5});
  final double width;
  final double height;
  final double bottomRadius;

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
            GoRouter.of(context).push(AppRouter.kMovieDetailsView);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(5.r),
              bottom: Radius.circular(widget.bottomRadius.r),
            ),
            child: CachedNetworkImage(
              imageUrl:
                  'https://s.france24.com/media/display/451ed2b8-eed6-11ea-afdd-005056bf87d6/w:1280/p:16x9/messi-1805.jpg',
              width: widget.width.w,
              height: widget.height.h,
              fit: BoxFit.cover,
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
