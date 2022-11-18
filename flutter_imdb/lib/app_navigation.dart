import 'package:flutter/material.dart';
import 'package:flutter_imdb/favourites_page.dart';
import 'package:flutter_imdb/home_page.dart';
import 'package:flutter_imdb/profile_page.dart';
import 'package:flutter_imdb/search_page.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class AppNavigation extends StatefulWidget {
  const AppNavigation({super.key});

  @override
  State<AppNavigation> createState() => _AppNavigationState();
}

class _AppNavigationState extends State<AppNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: () {
        switch (_selectedIndex) {
          case 0:
            return const HomePage();
          case 1:
            return const SearchPage();
          case 2:
            return const FavouritesPage();
          case 3:
            return const ProfilePage();
        }
      }(),
      bottomNavigationBar: MoltenBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onTabChange: (clickedIndex) {
          setState(() {
            _selectedIndex = clickedIndex;
          });
        },
        tabs: [
          MoltenTab(
            icon: const Icon(Icons.home),
            unselectedColor: const Color.fromARGB(255, 35, 159, 161),
          ),
          MoltenTab(
            icon: const Icon(Icons.search),
            unselectedColor: const Color.fromARGB(255, 35, 159, 161),
          ),
          MoltenTab(
            icon: const Icon(Icons.favorite_rounded),
            unselectedColor: const Color.fromARGB(255, 35, 159, 161),
          ),
          MoltenTab(
            icon: const Icon(Icons.person),
            unselectedColor: const Color.fromARGB(255, 35, 159, 161),
          ),
        ],
      ),
    );
  }
}
