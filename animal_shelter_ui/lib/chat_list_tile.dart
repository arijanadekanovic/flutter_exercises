import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile({
    super.key,
    required this.text,
    required this.imagePath,
    this.additionalText,
    this.icon,
    this.onTap,
    required this.textTime,
    //this.iconMessage,
  });

  final String text;
  final String imagePath;
  final String? additionalText;
  final IconData? icon;
  final void Function()? onTap;
  final String textTime;
  //final String? iconMessage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              imagePath,
                              height: 50,
                              width: 50,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                text,
                                style: const TextStyle(fontSize: 17),
                              ),
                              Text(
                                additionalText ?? '',
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(textTime),
                        Icon(
                          icon,
                          size: 25,
                          color: Color.fromARGB(255, 38, 149, 163),
                        ),
                        //255, 254, 180, 61
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
