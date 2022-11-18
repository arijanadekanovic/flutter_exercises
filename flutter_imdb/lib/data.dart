import 'package:flutter/material.dart';

class Movies {
  final String name;
  final String imagePath;
  final String? description;
  final String? numberOfLikes;
  final IconData? icon;

  Movies({
    required this.name,
    required this.imagePath,
    this.description,
    this.numberOfLikes,
    this.icon,
  });
}

final List<Movies> movies = [
  Movies(
    name: 'Mamma Mia',
    imagePath: 'assets/mammamia.jpg',
    description: 'The story of a bride-to-be trying to \nfind her real father told using hit songs by the popular 1970s group ABBA.',
    icon: Icons.star,
    numberOfLikes: '6.5/10',
  ),
  Movies(
    name: 'Black Adam',
    imagePath: 'assets/black_adam.jpg',
    description: 'Nearly 5,000 years after he was bestowed with the almighty powers\n of the Egyptian gods--and imprisoned just as quickly \nBlack Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.',
    icon: Icons.star,
    numberOfLikes: '7.0/10',
  ),
  Movies(
    name: 'Lord Of The Rings:\nThe Fellowship of \n        the Ring',
    imagePath: 'assets/LOTR.jpg',
    description: 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.',
    icon: Icons.star,
    numberOfLikes: '8.8/10',
  ),
  Movies(
    name: 'White Chicks',
    imagePath: 'assets/white_chicks.jpg',
    description: 'Two disgraced FBI agents go way undercover in an effort to protect hotel heiresses the Wilson sisters from a kidnapping plot.',
    icon: Icons.star,
    numberOfLikes: '5.7/10',
  ),
  Movies(
    name: 'Harry Potter \n and the Sorcere\'s \n           Stone',
    imagePath: 'assets/hp1.jpg',
    description: 'An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.',
    icon: Icons.star,
    numberOfLikes: '7.6/10',
  ),
  Movies(
    name: 'Bohemian \nRhapsody',
    imagePath: 'assets/queen.jpg',
    description: 'The story of the legendary British rock band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985).',
    icon: Icons.star,
    numberOfLikes: '7.9/10',
  ),
  Movies(
    name: 'Elvis',
    imagePath: 'assets/elvis.jpg',
    description: 'The life of American music icon Elvis Presley, from his childhood to becoming a rock and movie star in the 1950s while maintaining a complex relationship with his manager, Colonel Tom Parker.',
    icon: Icons.star,
    numberOfLikes: '7.4/10',
  ),
];
