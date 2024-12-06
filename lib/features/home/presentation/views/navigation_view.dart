import 'package:flutter/material.dart';
import 'package:movies_app/core/constants/constants.dart';
import 'package:movies_app/features/category/presentation/views/browse_category_view.dart';
import 'package:movies_app/features/home/presentation/views/home_view.dart';
import 'package:movies_app/features/home/presentation/views/widgets/custom_navigation_destination.dart';
import 'package:movies_app/features/search/presentation/views/search_view.dart';
import 'package:movies_app/features/watchlist/presentation/views/watchlist_view.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int selectedIndex = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          selectedIndex = value;
          controller.animateToPage(
            selectedIndex,
            duration: const Duration(microseconds: 100),
            curve: Curves.linear,
          );
        },
        destinations: [
          CustomNavigationDestination(
            selectedIndex: selectedIndex,
            destinationNumber: 0,
            destinationLabel: 'HOME',
            destinationIcon: kHomeIcon,
          ),
          CustomNavigationDestination(
            selectedIndex: selectedIndex,
            destinationNumber: 1,
            destinationLabel: 'SEARCH',
            destinationIcon: kSearchIcon,
          ),
          CustomNavigationDestination(
            selectedIndex: selectedIndex,
            destinationNumber: 2,
            destinationLabel: 'BROWSE',
            destinationIcon: kBrowseIcon,
          ),
          CustomNavigationDestination(
            selectedIndex: selectedIndex,
            destinationNumber: 3,
            destinationLabel: 'WATCHLIST',
            destinationIcon: kWatchlistIcon,
          ),
        ],
      ),
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          onPageChanged: (value) {
            selectedIndex = value;
            setState(() {});
          },
          children: const [
            HomeView(),
            SearchView(),
            BrowseCategoryView(),
            WatchlistView()
          ],
        ),
      ),
    );
  }
}