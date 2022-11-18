import 'package:flutter/material.dart';
import 'package:flutter_imdb/main.dart';
import 'package:flutter_imdb/movies_list.dart';

class MoviesDisplayed extends StatelessWidget {
  const MoviesDisplayed({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Text(
            'Popular',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        Expanded(
          child: FutureBuilder(
            future: moviesRepository.getPopularMovies(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                //Imamo filmove, renderiraj listu widgeta
                final movies = snapshot.data ?? [];

                return ListView.builder(
                  itemCount: movies.length,
                  itemBuilder: (context, index) => MoviesList(
                    text: movies[index].title ?? '',
                    imagePath: 'https://image.tmdb.org/t/p/w500${movies[index].posterPath}',
                    //description: 'The story of a bride-to-be trying to \nfind her real father told using hit songs by the popular 1970s group ABBA.',
                    icon: Icons.star,
                    likeIcon: Icons.favorite_border_rounded,
                    numberOfLikes: '${movies[index].voteAverage.toString()} / 10 IMDb',
                  ),
                );
              }

              //Nema filmova
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ],
    );
  }
}
