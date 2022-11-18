import 'package:animal_shelter_ui/chat_list_tile.dart';
import 'package:animal_shelter_ui/data.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final FocusNode _focusNode = FocusNode();

  final _searchTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Chats'),
          backgroundColor: const Color.fromARGB(255, 251, 237, 253),
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
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(color: Color.fromARGB(255, 76, 18, 116)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(color: Color.fromARGB(255, 219, 175, 238)),
                    ),
                    hintText: 'Search',
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(10),
                      height: 10,
                      width: 15,
                      child: Image.asset('assets/search_engine.png'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ListView(
                shrinkWrap: true,
                children: () {
                  return people
                      .where(
                        (person) => person.name.toLowerCase().contains(
                              _searchTextEditingController.text.toLowerCase(),
                            ),
                      )
                      .map(
                        (person) => ChatListTile(
                          text: person.name,
                          imagePath: person.imagePath,
                          additionalText: person.chatText,
                          textTime: person.timeOfText,
                          icon: person.icon,
                        ),
                      )
                      .toList();
                }(),
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
    super.dispose();
  }
}
