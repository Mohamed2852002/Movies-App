import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/constants/constants.dart';

class CustomMovieDetailsImage extends StatefulWidget {
  const CustomMovieDetailsImage({super.key, required this.image});
  final String image;
  @override
  State<CustomMovieDetailsImage> createState() =>
      _CustomMovieDetailsImageState();
}

class _CustomMovieDetailsImageState extends State<CustomMovieDetailsImage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5.r),
          child: CachedNetworkImage(
            imageUrl: 'https://image.tmdb.org/t/p/original${widget.image}',
            width: 130.w,
            height: 200.h,
            fit: BoxFit.fill,
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
