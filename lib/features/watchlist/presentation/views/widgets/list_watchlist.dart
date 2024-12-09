import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/watchlist/presentation/views/widgets/custom_watchlist_list_item.dart';
import '../../../data/model/watch_list_model.dart';

class ListWatchlist extends StatelessWidget {
  const ListWatchlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        separatorBuilder: (context, index) => const RSizedBox(height: 20),
        itemCount: watchlist.length,
        itemBuilder: (context, index) {
          return const CustomWatchlistListItem();
        },
      ),
    );
  }
}
