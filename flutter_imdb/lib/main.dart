import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imdb/app_navigation.dart';
import 'package:flutter_imdb/movies_repository.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

late MoviesRepository moviesRepository;

Dio buildDio() {
  final dio = Dio(
    BaseOptions(
      headers: {
        'Authorization': 'Bearer YOUR_TOKEN_HERE',
      },
    ),
  );
  dio.interceptors.add(PrettyDioLogger());

  return dio;
}

Future<void> main() async {
  final dio = buildDio();
  moviesRepository = MoviesRepository(dio: dio);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            showUnselectedLabels: true,
            unselectedItemColor: Color.fromARGB(175, 42, 185, 188),
            selectedItemColor: Color.fromARGB(174, 126, 244, 228),
          ),
          fontFamily: 'GoogleSans',
          textTheme: const TextTheme(bodyText1: TextStyle(fontFamily: 'GoogleSans'))),
      home: const AppNavigation(),
    );
  }
}
