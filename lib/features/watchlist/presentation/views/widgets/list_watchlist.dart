import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/themes/app_colors.dart';
import 'package:movies_app/features/watchlist/presentation/views/widgets/watchlist_detalis.dart';
import 'package:movies_app/features/watchlist/presentation/views/widgets/watchlist_image.dart';
import '../model/watch_list_model.dart';

class ListWatchlist extends StatelessWidget {
  const ListWatchlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:  REdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            color: AppColors.containerColor,
            height: 20.h,
          ),
          itemCount: watchlist.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                WatchlistImage(image: watchlist[index].image,),
                WatchlistDetalis(
                title: watchlist[index].title,
                date: watchlist[index].date,
                details: watchlist[index].details,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}