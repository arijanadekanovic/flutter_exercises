import 'package:animal_shelter_ui/animal_sort_widget.dart';
import 'package:animal_shelter_ui/category_item_widget.dart';
import 'package:animal_shelter_ui/data.dart';
import 'package:animal_shelter_ui/home/home_banner.dart';
import 'package:flutter/material.dart';
import '../appbar_welcome_essentials.dart';
import '../settings_page.dart';

enum Category {
  cat,
  dog,
  bird,
  fish,
  hamster,
}

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FocusNode _focusNode = FocusNode();

  Category selectedCategory = Category.bird;

  final _searchTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          // Here we take the value from the AppNavigation object that was created by
          // the App.build method, and use it to set our appbar title.
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: const AppBarWelcomeEssentials(),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // .... .push(Widget)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
            ),
          ],
        ),
        body: SizedBox(
          height: 600,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _searchTextEditingController,
                  onChanged: (_) => setState(() {}),
                  focusNode: _focusNode,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xFF000000)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.purple),
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
              const HomeBanner(),
              Container(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'Categories',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Explore',
                      style: TextStyle(color: Colors.lightBlue),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.only(left: 15),
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryItemWidget(
                      text: 'Cat',
                      imagePath: 'assets/cat2.png',
                      isSelected: selectedCategory == Category.cat,
                      onTap: () => setState(() => selectedCategory = Category.cat),
                    ),
                    CategoryItemWidget(
                      text: 'Dog',
                      imagePath: 'assets/dog.png',
                      isSelected: selectedCategory == Category.dog,
                      onTap: () => setState(() => selectedCategory = Category.dog),
                    ),
                    CategoryItemWidget(
                      text: 'Bird',
                      imagePath: 'assets/birbs.png',
                      isSelected: selectedCategory == Category.bird,
                      onTap: () => setState(() => selectedCategory = Category.bird),
                    ),
                    CategoryItemWidget(
                      text: 'Fish',
                      imagePath: 'assets/fish.png',
                      isSelected: selectedCategory == Category.fish,
                      onTap: () => setState(() => selectedCategory = Category.fish),
                    ),
                    CategoryItemWidget(
                      text: 'Hamster',
                      imagePath: 'assets/hamster.png',
                      isSelected: selectedCategory == Category.hamster,
                      onTap: () => setState(() => selectedCategory = Category.hamster),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                margin: const EdgeInsets.only(left: 15),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: () {
                    List<Widget> buildAnimalSortWidget(List<Animal> animals) {
                      return animals
                          .where(
                            (animal) => animal.name.toLowerCase().contains(
                                  _searchTextEditingController.text.toLowerCase(),
                                ),
                          )
                          .map<Widget>(
                            (animal) => AnimalSortWidget(
                              text: animal.name,
                              imagePath: animal.imagePath,
                              color: animal.color,
                            ),
                          )
                          .toList();
                    }

                    switch (selectedCategory) {
                      case Category.cat:
                        return buildAnimalSortWidget(cats);
                      case Category.dog:
                        return buildAnimalSortWidget(dogs);
                      case Category.bird:
                        return buildAnimalSortWidget(birds);
                      case Category.fish:
                        return buildAnimalSortWidget(fishes);
                      case Category.hamster:
                        return buildAnimalSortWidget(hamsters);
                    }
                  }(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _searchTextEditingController.dispose();
    super.dispose();
  }
}
