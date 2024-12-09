import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/widgets/custom_divider.dart';
import 'package:movies_app/features/watchlist/presentation/views/widgets/custom_watchlist_movie.dart';

class CustomWatchlistListItem extends StatelessWidget {
  const CustomWatchlistListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomWatchlistMovie(),
        CustomDivider(),
      ],
    );
  }
}
