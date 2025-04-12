import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.only(left: 16, top: 30),
          child: Text(
            'Watchlist',
            style: Styles.textStyle22,
          ),
        ),
        const SizedBox(height: 16),
        const ListWatchlist()
      ],
    );
  }
}
