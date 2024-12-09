import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/watchlist/presentation/views/widgets/list_watchlist.dart';
import '../../../../core/styles/styles.dart';

class WatchlistView extends StatelessWidget {
  const WatchlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: REdgeInsets.only(left: 17,top: 55),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Watchlist',
              style: Styles.textStyle16,
            ),
          ),
        ),
        const RSizedBox(height: 15),
        ListWatchlist()
      ],
    );
  }
}