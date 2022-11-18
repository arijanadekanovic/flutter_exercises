import 'package:animal_shelter_ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

import 'chat_page.dart';
import 'notifications_page.dart';
import 'profile_page.dart';

class AppNavigation extends StatefulWidget {
  const AppNavigation({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<AppNavigation> createState() => _AppNavigationState();
}

class _AppNavigationState extends State<AppNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: () {
        switch (_selectedIndex) {
          case 0:
            return const HomePage();
          case 1:
            return const NotificationsPage();
          case 2:
            return const ChatPage();
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
            unselectedColor: const Color.fromARGB(255, 230, 193, 237),
          ),
          MoltenTab(
            icon: const Icon(Icons.notifications),
            unselectedColor: const Color.fromARGB(255, 230, 193, 237),
          ),
          MoltenTab(
            icon: const Icon(Icons.chat_rounded),
            unselectedColor: const Color.fromARGB(255, 230, 193, 237),
          ),
          MoltenTab(
            icon: const Icon(Icons.person),
            unselectedColor: const Color.fromARGB(255, 230, 193, 237),
          ),
        ],
        domeCircleColor: const Color.fromARGB(255, 230, 193, 237),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {},
            tooltip: 'Increment',
            backgroundColor: const Color.fromARGB(156, 200, 134, 230),
            foregroundColor: Colors.white,
            child: const Icon(Icons.add),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
