import 'package:flutter/material.dart';

class SwitchTurnOffOnTwoPlayer extends StatelessWidget {
  const SwitchTurnOffOnTwoPlayer({
    super.key,
    required this.isSwitched,
    this.onChanged,
  });

  final bool isSwitched;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Turn off/on two player',
          style: Theme.of(context).textTheme.displaySmall,
          textAlign: TextAlign.center,
        ),
        Switch.adaptive(
          padding: EdgeInsets.only(top: 8),
          value: isSwitched,
          activeColor: Colors.white,
          activeTrackColor: Colors.green,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
