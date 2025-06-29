import 'package:flutter/material.dart';

class ItIsPlayerTurn extends StatelessWidget {
  const ItIsPlayerTurn({super.key, required this.activePlayer});

  final String activePlayer;

  @override
  Widget build(BuildContext context) {
    return Text(
      'It\'s $activePlayer Turn',
      style: Theme.of(context).textTheme.headlineLarge,
      textAlign: TextAlign.center,
    );
  }
}
