import 'package:flutter/material.dart';
import 'package:flutter_imdb/movies_displayed.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    this.title,
  });

  final String? title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/n_little.png',
          height: 40,
          width: 40,
        ),
      ),
      body: const MoviesDisplayed(),
    );
  }
}
