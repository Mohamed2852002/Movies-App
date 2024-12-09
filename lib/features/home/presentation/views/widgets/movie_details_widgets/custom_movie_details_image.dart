import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/constants/constants.dart';

class CustomMovieDetailsImage extends StatefulWidget {
  const CustomMovieDetailsImage({super.key});

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
            imageUrl:
                'https://s.france24.com/media/display/451ed2b8-eed6-11ea-afdd-005056bf87d6/w:1280/p:16x9/messi-1805.jpg',
            width: 130.w,
            height: 200.h,
            fit: BoxFit.cover,
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
