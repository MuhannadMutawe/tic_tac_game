import 'package:flutter/material.dart';

class SwitchTurnOffOnTwoPlayer extends StatelessWidget {
  const SwitchTurnOffOnTwoPlayer(
      {super.key, required this.isSwitched, this.onChanged});

  final bool isSwitched;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile.adaptive(
      title: Text(
        'Turn off/on two player',
        style: Theme.of(context).textTheme.headlineMedium,
        textAlign: TextAlign.center,
      ),
      value: isSwitched,
      onChanged: onChanged,
    );
  }
}
