import 'package:flutter/material.dart';

import '../../../core/theming/app_colors.dart';

class RepeatTheGameButton extends StatelessWidget {
  const RepeatTheGameButton({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(Icons.replay),
      label: Text('Repeat the game'),
      style: ButtonStyle(
          backgroundColor:
          WidgetStateProperty.all(AppColors.splashColor)),
    );
  }
}
