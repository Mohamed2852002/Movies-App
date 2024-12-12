import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/styles/styles.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5.r),
          child: CachedNetworkImage(
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxlN43fZveSjOFapAiHF6jEqWmQRWA273LTw&s',
            height: 90.h,
            width: 160.w,
            fit: BoxFit.fill,
          ),
        ),
        Text(
          'Category Name',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
