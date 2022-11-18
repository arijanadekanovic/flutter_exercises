import 'package:flutter/material.dart';
import 'package:flutter_imdb/main.dart';
import 'package:flutter_imdb/movies_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final FocusNode _focusNode = FocusNode();
  final _searchTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _searchTextEditingController,
                onChanged: (_) => setState(() {}),
                focusNode: _focusNode,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(color: Color(0xFF000000)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: const BorderSide(color: Color.fromARGB(255, 27, 176, 187)),
                  ),
                  hintText: 'Enter a search term',
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(10),
                    height: 10,
                    width: 15,
                    child: Image.asset('assets/search.png'),
                  ),
                ),
              ),
            ),
            FutureBuilder(
              future: moviesRepository.getPopularMovies(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final movies = snapshot.data
                          ?.where(
                            (movie) =>
                                movie.title?.toLowerCase().contains(
                                      _searchTextEditingController.text.toLowerCase(),
                                    ) ??
                                false,
                          )
                          .toList() ??
                      [];

                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: movies.length,
                    itemBuilder: (context, index) => MoviesList(
                      text: movies[index].title ?? '',
                      imagePath: 'https://image.tmdb.org/t/p/w500${movies[index].posterPath}',
                      //description: 'The story of a bride-to-be trying to \nfind her real father told using hit songs by the popular 1970s group ABBA.',
                      icon: Icons.star,
                      numberOfLikes: '${movies[index].voteAverage.toString()} / 10 IMDb',
                    ),
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
    );
  }
}
