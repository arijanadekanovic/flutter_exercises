// import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool oTurn = false;
  String _winner = '';
  List<String> displayXO = ['', '', '', '', '', '', '', '', ''];

  int xScore = 0;
  int oScore = 0;

  @override
  Widget build(BuildContext context) {
    final gridSize = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Material(
        child: Container(
          color: Colors.grey[800],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Player X',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                        Text(
                          xScore.toString(),
                          style: const TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Player O',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                        Text(
                          oScore.toString(),
                          style: const TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                )),
              ),
              SizedBox(
                height: gridSize,
                width: gridSize,
                child: GridView.builder(
                  itemCount: 9,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        _onTap(index);
                      },
                      child: Container(
                        height: gridSize * 0.4,
                        width: gridSize * 0.4,
                        decoration: BoxDecoration(
                          border: Border.all(color: (Colors.grey[700])!),
                        ),
                        child: Center(
                          child: Text(
                            displayXO[index],
                            style: const TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Expanded(
                child: Center(
                  child: Text(
                    'Powered by Nucleus',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTap(int index) {
    if (_winner == '') {
      setState(() {
        if (displayXO[index] == '') {
          if (oTurn) {
            displayXO[index] = 'O';
          } else {
            displayXO[index] = 'X';
          }
        }
        oTurn = !oTurn;
        _checkWinner();
      });
    }
  }

  void _checkWinner() {
    if (displayXO[0] == displayXO[1] && displayXO[0] == displayXO[2] && displayXO[0] != '') {
      _showWinDialog(displayXO[0]);
    }

    if (displayXO[3] == displayXO[4] && displayXO[3] == displayXO[5] && displayXO[3] != '') {
      _showWinDialog(displayXO[3]);
    }

    if (displayXO[6] == displayXO[7] && displayXO[6] == displayXO[8] && displayXO[6] != '') {
      _showWinDialog(displayXO[6]);
    }

    if (displayXO[0] == displayXO[3] && displayXO[0] == displayXO[6] && displayXO[0] != '') {
      _showWinDialog(displayXO[0]);
    }

    if (displayXO[1] == displayXO[4] && displayXO[1] == displayXO[7] && displayXO[1] != '') {
      _showWinDialog(displayXO[1]);
    }

    if (displayXO[2] == displayXO[5] && displayXO[2] == displayXO[8] && displayXO[2] != '') {
      _showWinDialog(displayXO[2]);
    }

    if (displayXO[0] == displayXO[4] && displayXO[0] == displayXO[8] && displayXO[0] != '') {
      _showWinDialog(displayXO[0]);
    }

    if (displayXO[2] == displayXO[4] && displayXO[2] == displayXO[6] && displayXO[2] != '') {
      _showWinDialog(displayXO[2]);
    }
  }

  void _showWinDialog(String winner) {
    setState(() {
      _winner = winner;
    });

    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Winner is: $winner'),
            actions: [
              TextButton(
                  onPressed: () {
                    clearBoard();
                    Navigator.of(context).pop();
                  },
                  child: const Text('Play Again'))
            ],
          );
        });

    if (winner == 'X') {
      xScore += 1;
    } else if (winner == 'O') {
      oScore += 1;
    }
  }

  void clearBoard() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        displayXO[i] = '';
      }

      _winner = '';
      oTurn = false;
    });
  }
}
