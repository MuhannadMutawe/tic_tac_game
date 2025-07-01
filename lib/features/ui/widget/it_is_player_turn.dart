import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../logic/change_active_player_provider.dart';

class ItIsPlayerTurn extends StatelessWidget {
  const ItIsPlayerTurn({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'It\'s ${Provider.of<ActivePlayer>(context).activePlayer} Turn',
      style: Theme.of(context).textTheme.displaySmall,
      textAlign: TextAlign.center,
    );
  }
}
