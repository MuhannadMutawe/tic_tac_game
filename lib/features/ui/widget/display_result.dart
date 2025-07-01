import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_game/features/logic/change_active_player_provider.dart';

class DisplayResult extends StatelessWidget {
  const DisplayResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      Provider.of<ActivePlayer>(context).result,
      style: Theme.of(context).textTheme.headlineLarge,
      textAlign: TextAlign.center,
    );
  }
}
