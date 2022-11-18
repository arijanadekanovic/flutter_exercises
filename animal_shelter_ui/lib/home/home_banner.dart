import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 2, 15, 2),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(144, 136, 228, 80),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              const Text(
                'Street pets need \nour protection',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                ),
                onPressed: () {
                  ('tekst');
                },
                child: const Text(
                  'Donate Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 130,
            height: 200,
            child: Image.asset('assets/birb.png'),
          )
        ],
      ),
    );
  }
}
