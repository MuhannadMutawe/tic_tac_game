import 'package:flutter/material.dart';

class DisplayResult extends StatelessWidget {
  const DisplayResult({super.key, required this.result});

  final String result;

  @override
  Widget build(BuildContext context) {
    return Text(
      'The Player $result is Winner 🎉.',
      style: Theme.of(context).textTheme.headlineLarge,
      textAlign: TextAlign.center,
    );
  }
}
