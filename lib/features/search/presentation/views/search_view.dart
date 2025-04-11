import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/utils/functions/setup_service_locator.dart';
import 'package:movies_app/features/search/data/repos/search_repo.dart';
import 'package:movies_app/features/search/presentation/view_model/get_searched_movies_cubit/get_searched_movies_cubit.dart';
import 'package:movies_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:movies_app/features/search/presentation/views/widgets/searched_movies_bloc_builder.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetSearchedMoviesCubit(getIt<SearchRepo>()),
      child: const Column(
        children: [
          CustomTextField(),
          Expanded(child: SearchedMoviesBlocBuilder()),
        ],
      ),
    );
  }
}
