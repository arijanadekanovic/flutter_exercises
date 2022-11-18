import 'package:animal_shelter_ui/app_navigation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameFocusNode = FocusNode();
  final _usernameTextEditingController = TextEditingController();
  final _passwordFocusNode = FocusNode();
  final _passwordTextEditingController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    // print('LoginPage build method _obscureText value: $_obscureText');

    return GestureDetector(
      onTap: () {
        _usernameFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/animal.png',
                height: 100,
                width: 100,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 10),
              child: TextField(
                focusNode: _usernameFocusNode,
                controller: _usernameTextEditingController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xFF000000)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.purple),
                  ),
                  hintText: 'Username or Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
              child: TextField(
                controller: _passwordTextEditingController,
                obscureText: _obscureText,
                focusNode: _passwordFocusNode,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Color(0xFF000000)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.purple),
                  ),
                  hintText: 'Password',
                  suffixIcon: InkWell(
                    onTap: () {
                      //  print('Suffix icon tap before _obscureText value: $_obscureText');
                      setState(
                        () {
                          _obscureText = !_obscureText;
                        },
                      );
                      // print('Suffix icon tap after _obscureText value: $_obscureText');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 10,
                      width: 15,
                      child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                        color: const Color.fromARGB(255, 219, 126, 235),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 219, 126, 235)),
              ),
              onPressed: () {
                if (_usernameTextEditingController.text == 'a' && _passwordTextEditingController.text == 'a') {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AppNavigation(),
                    ),
                  );
                }
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
