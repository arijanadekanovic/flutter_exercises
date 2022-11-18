import 'package:flutter/material.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile({
    Key? key,
    required this.text,
    this.icon,
    this.additionalText,
    this.onTap,
  }) : super(key: key);

  final String text;
  final IconData? icon;
  final String? additionalText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  if (icon != null)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        icon,
                        size: 25,
                        color: const Color.fromARGB(255, 191, 123, 203),
                      ),
                    ),
                  Text(
                    text,
                    style: const TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            Text(
              additionalText ?? '',
              style: const TextStyle(fontSize: 12),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.chevron_right,
                size: 25,
                color: Color.fromARGB(255, 191, 123, 203),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
