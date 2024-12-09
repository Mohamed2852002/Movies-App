import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/utils/widgets/movie_information.dart';

class SearchedMovieWidget extends StatelessWidget {
  const SearchedMovieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.r),
            child: CachedNetworkImage(
              imageUrl:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxlN43fZveSjOFapAiHF6jEqWmQRWA273LTw&s",
              width: 140.w,
              height: 89.h,
              fit: BoxFit.cover,
            ),
          ),
          const RSizedBox(width: 16),
          const MovieInformationWidget(),
        ],
      ),
    );
  }
}
