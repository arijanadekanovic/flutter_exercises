import 'package:flutter/material.dart';

class AppBarWelcomeEssentials extends StatelessWidget {
  const AppBarWelcomeEssentials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: Image.asset('assets/animal.png'),
        ),
        const SizedBox(width: 10),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: const Text('Hello, \n  friend'),
            ),
            Container(
              padding: const EdgeInsets.only(top: 30, left: 5),
              child: Image.asset('assets/hand_emoji.png', width: 20, height: 20),
            ),
          ],
        ),
      ],
    );
  }
}
