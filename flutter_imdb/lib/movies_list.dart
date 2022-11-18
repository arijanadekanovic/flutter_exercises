import 'package:flutter/material.dart';

class MoviesList extends StatelessWidget {
  const MoviesList({
    super.key,
    required this.text,
    required this.imagePath,
    this.onTap,
    this.numberOfLikes,
    this.icon,
    this.likeIcon,
  });

  final String text;
  final String imagePath;

  final String? numberOfLikes;
  final IconData? icon;
  final IconData? likeIcon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.network(
                imagePath,
                height: 150,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      text,
                      style: const TextStyle(fontSize: 20, color: Color.fromARGB(199, 13, 85, 78)),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          icon,
                          size: 20,
                          color: const Color.fromARGB(214, 246, 193, 47),
                        ),
                        Text(numberOfLikes ?? '', style: const TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                likeIcon,
                size: 22,
                color: const Color.fromARGB(211, 40, 154, 180),
              ),
            )
          ],
        ),
      ),
    );
  }
}
