import 'package:animal_shelter_ui/settings_list_tile.dart';
import 'package:flutter/material.dart';

import 'data.dart';
import 'login_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color.fromARGB(255, 230, 193, 237),
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            width: 150,
            padding: const EdgeInsets.only(top: 22.0),
            child: CircleAvatar(
              radius: 220,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/me.jpg"),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const SettingsListTile(
            icon: Icons.person,
            text: 'Personal Info',
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SettingsListTile(
              icon: Icons.language,
              text: 'Language',
              additionalText: 'English',
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      content: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Please select a language',
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                            ...languages
                                .map<Widget>(
                                  (language) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            language.iconPath,
                                            height: 20,
                                            width: 20,
                                          ),
                                        ),
                                        Text(language.name),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 93, 228, 134)),
                                  ),
                                  onPressed: () => Navigator.pop(context, true),
                                  //},
                                  child: const Text(
                                    'Save',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(const Color.fromARGB(203, 240, 38, 38)),
                                  ),
                                  onPressed: () => Navigator.pop(context, false),
                                  child: const Text(
                                    'Close',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: SettingsListTile(
              icon: Icons.notifications,
              text: 'Notifications',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: SettingsListTile(
              icon: Icons.favorite,
              text: 'Saved Items',
              additionalText: '5',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: SettingsListTile(
              icon: Icons.help_outline,
              text: 'Help',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SettingsListTile(
              icon: Icons.logout_outlined,
              text: 'Log Out',
              additionalText: 'adekanovic',
              onTap: () {
                Navigator.pop(context, true);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 100, bottom: 20),
            child: Text(
              'Powered by Nucleus',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
