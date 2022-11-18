import 'package:flutter/material.dart';

class AnimalSortWidget extends StatelessWidget {
  const AnimalSortWidget({
    Key? key,
    required this.text,
    required this.imagePath,
    this.color,
  }) : super(key: key);

  final String text, imagePath;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: color ?? const Color.fromARGB(233, 193, 226, 249),
        borderRadius: BorderRadius.circular(12),
      ),
      width: MediaQuery.of(context).size.width * 0.45,
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  text,
                  softWrap: true,
                ),
              ),
              TextButton(
                style: const ButtonStyle(),
                onPressed: () {
                  ('Like');
                },
                child: Image.asset('assets/love.png', width: 25, height: 25),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
