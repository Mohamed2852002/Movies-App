import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/models/movie_model/movie_model.dart';
import 'package:movies_app/features/watchlist/presentation/view_model/watch_list_cubit/watch_list_cubit.dart';
import 'package:movies_app/features/watchlist/presentation/view_model/watch_list_cubit/watch_list_state.dart';
import 'package:movies_app/features/watchlist/presentation/views/widgets/custom_watchlist_list_item.dart';

class ListWatchlist extends StatelessWidget {
  const ListWatchlist({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchListCubit, WatchListState>(
      builder: (context, state) {
        if (context.read<WatchListCubit>().watchListBox.isEmpty) {
          return const Expanded(
            child: Center(
              child: Text(
                'No Movies in Watchlist',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 8),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: context.read<WatchListCubit>().watchListBox.length,
              itemBuilder: (context, index) {
                List<MovieModel> watchlist =
                    context.read<WatchListCubit>().watchListBox.values.toList();
                return CustomWatchlistListItem(movie: watchlist[index]);
              },
            ),
          );
        }
      },
    );
  }
}
