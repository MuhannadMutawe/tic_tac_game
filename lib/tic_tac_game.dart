import 'package:flutter/material.dart';
import 'package:tic_tac_game/features/ui/home_screen.dart';

class TicTacGame extends StatelessWidget {
  const TicTacGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue ,
        primaryColor: const Color(0xff00061a),
        shadowColor: const Color(0xff001456),
        splashColor: const Color(0xff4169e8)
      ),
      home: HomeScreen(),
    );
  }
}
