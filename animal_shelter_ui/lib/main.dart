// import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
// import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';

import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.grey,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            showUnselectedLabels: true,
            unselectedItemColor: Color.fromRGBO(144, 136, 228, 80),
            selectedItemColor: Color.fromARGB(175, 203, 136, 228),
          ),
          floatingActionButtonTheme: const FloatingActionButtonThemeData()),
      home: const LoginPage(),
    );
  }
}
