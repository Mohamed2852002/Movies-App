import 'package:flutter/material.dart';
import 'package:movies_app/features/search/presentation/views/widgets/custom_list_item.dart';
import 'package:movies_app/features/search/presentation/views/widgets/custom_text_field.dart';
import 'package:movies_app/features/search/presentation/views/widgets/no_movies_image_widget.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(),
        CustomListItem(),
        NoMoviesImageWidget(),
      ],
    );
  }
}
