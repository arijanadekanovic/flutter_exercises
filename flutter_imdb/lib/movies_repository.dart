import 'package:dio/dio.dart';
import 'package:flutter_imdb/movie.dart';

class MoviesRepository {
  final Dio dio;

  MoviesRepository({required this.dio});

  Future<List<Movie>> getPopularMovies() async {
    try {
      var response = await dio.get('https://api.themoviedb.org/3/movie/popular');

      final List<Movie> movies = response.data['results']
          .map<Movie>(
            (jsonMovie) => Movie.fromJson(jsonMovie),
          )
          .toList();

      return movies;
    } catch (e) {
      return [];
    }
  }
}
