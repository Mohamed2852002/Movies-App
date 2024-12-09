import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/features/watchlist/presentation/views/widgets/list_watchlist.dart';
import '../../../../core/styles/styles.dart';

class WatchlistView extends StatelessWidget {
  const WatchlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: REdgeInsets.only(left: 17, top: 50),
          child: Text(
            'Watchlist',
            style: Styles.textStyle22,
          ),
        ),
        const RSizedBox(height: 12),
        const ListWatchlist()
      ],
    );
  }
}
