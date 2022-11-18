import 'package:flutter/material.dart';

class Language {
  final String name;
  final String iconPath;

  Language({required this.name, required this.iconPath});
}

final List<Language> languages = [
  Language(name: 'English', iconPath: 'assets/english.png'),
  Language(name: 'German', iconPath: 'assets/german.png'),
  Language(name: 'French', iconPath: 'assets/french.png'),
  Language(name: 'Italian', iconPath: 'assets/italian.png'),
  Language(name: 'Bosnian', iconPath: 'assets/bosnian.png'),
];

class Animal {
  final String name;
  final String imagePath;
  final Color? color;

  Animal({
    required this.name,
    required this.imagePath,
    this.color,
  });
}

final List<Animal> cats = [
  Animal(
    name: 'Persian - Pingu',
    imagePath: 'assets/persian.jpg',
    color: const Color.fromARGB(233, 193, 226, 249),
  ),
  Animal(
    name: 'Siberian - Lale',
    imagePath: 'assets/siberian.jpg',
    color: const Color.fromARGB(255, 238, 200, 246),
  ),
  Animal(
    name: 'B.Shorthair - Zion',
    imagePath: 'assets/bshorthair.jpg',
    color: const Color.fromARGB(233, 193, 226, 249),
  ),
  Animal(
    name: 'Siamese - Miu',
    imagePath: 'assets/siamese.jpg',
    color: const Color.fromARGB(255, 238, 200, 246),
  ),
];

final List<Animal> dogs = [
  Animal(
    name: 'Husky - Slash',
    imagePath: 'assets/husky.jpg',
    color: const Color.fromARGB(233, 193, 226, 249),
  ),
  Animal(
    name: 'Labrador - Zizzy',
    imagePath: 'assets/labrador.jpg',
    color: const Color.fromARGB(255, 238, 200, 246),
  ),
  Animal(
    name: 'Pointer - Max',
    imagePath: 'assets/pointer.jpg',
    color: const Color.fromARGB(233, 193, 226, 249),
  ),
  Animal(
    name: 'Pomeranian - Lila',
    imagePath: 'assets/pomeranian.jpg',
    color: const Color.fromARGB(255, 238, 200, 246),
  ),
];

final List<Animal> birds = [
  Animal(
    name: 'Parrot - Rio',
    imagePath: 'assets/parrot.jpg',
    color: const Color.fromARGB(233, 193, 226, 249),
  ),
  Animal(
    name: 'Kakariki - Zazu',
    imagePath: 'assets/kakariki1.jpg',
    color: const Color.fromARGB(255, 238, 200, 246),
  ),
  Animal(
    name: 'Budgie - Asterix',
    imagePath: 'assets/budgie.jpg',
    color: const Color.fromARGB(233, 193, 226, 249),
  ),
  Animal(
    name: 'Cockatiel - Annie',
    imagePath: 'assets/cockatiel.jpg',
    color: const Color.fromARGB(255, 238, 200, 246),
  ),
];

final List<Animal> fishes = [
  Animal(
    name: 'Moor GF - Panther',
    imagePath: 'assets/black.jpg',
    color: const Color.fromARGB(233, 193, 226, 249),
  ),
  Animal(
    name: 'Goldfish - Nemo',
    imagePath: 'assets/goldfish.jpg',
    color: const Color.fromARGB(255, 238, 200, 246),
  ),
  Animal(
    name: 'Telescope GF - Alexander',
    imagePath: 'assets/telescope.jpg',
    color: const Color.fromARGB(233, 193, 226, 249),
  ),
  Animal(
    name: 'Canary GF - Diana',
    imagePath: 'assets/yellow.jpg',
    color: const Color.fromARGB(255, 238, 200, 246),
  ),
];
final List<Animal> hamsters = [
  Animal(
    name: 'Dwarf - Dyno',
    imagePath: 'assets/dwarf.jpg',
    color: const Color.fromARGB(233, 193, 226, 249),
  ),
  Animal(
    name: 'Winter - Snowflake',
    imagePath: 'assets/winter.jpeg',
    color: const Color.fromARGB(255, 238, 200, 246),
  ),
  Animal(
    name: 'Regular - Pax',
    imagePath: 'assets/hamster1.jpg',
    color: const Color.fromARGB(233, 193, 226, 249),
  ),
  Animal(
    name: 'Dwarf - Penny',
    imagePath: 'assets/dwarf2.png',
    color: const Color.fromARGB(255, 238, 200, 246),
  ),
];

class Person {
  final String name;
  final String imagePath;
  final String? chatText;
  final String timeOfText;
  final IconData? icon;

  Person({
    required this.name,
    required this.imagePath,
    this.chatText,
    required this.timeOfText,
    this.icon,
  });
}

final List<Person> people = [
  Person(
    name: 'Arijana',
    imagePath: 'assets/bird_female.png',
    chatText: 'Welcome to Chats!',
    timeOfText: '13:10',
    icon: (Icons.circle_notifications_sharp),
  ),
  Person(
    name: 'Salih',
    imagePath: 'assets/bird_male.png',
    chatText: 'Welcome to Chats!',
    timeOfText: '14:01',
  ),
  Person(
    name: 'Zazulina',
    imagePath: 'assets/bird_female.png',
    chatText: 'Welcome to Chats!',
    timeOfText: '19:01',
    icon: (Icons.circle_notifications_sharp),
  ),
  Person(
    name: 'Asterixmrrr',
    imagePath: 'assets/bird_male.png',
    chatText: 'Welcome to Chats!',
    timeOfText: '13:10',
  ),
  Person(
    name: 'Big',
    imagePath: 'assets/bird_male.png',
    chatText: 'Welcome to Chats!',
    timeOfText: '14:11',
  ),
  Person(
    name: 'Family',
    imagePath: 'assets/bird_female.png',
    chatText: 'Welcome to Chats!',
    timeOfText: '11:11',
  ),
];
