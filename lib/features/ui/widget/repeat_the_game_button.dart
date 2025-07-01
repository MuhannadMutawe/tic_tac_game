import 'package:flutter/material.dart';

import '../../../core/theming/app_colors.dart';

class RepeatTheGameButton extends StatelessWidget {
  const RepeatTheGameButton({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        Icons.replay,
        size: 32,
      ),
      label: Text(
        'Repeat the game',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        backgroundColor: AppColors.splashColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    );
  }
}
