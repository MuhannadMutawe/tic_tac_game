import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_game/core/theming/app_colors.dart';
import 'package:tic_tac_game/features/ui/home_screen.dart';

import 'features/logic/change_active_player_provider.dart';

class TicTacGame extends StatelessWidget {
  const TicTacGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryColor,
        appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryColor),
        brightness: Brightness.dark,
        primarySwatch: AppColors.primarySwatch,
        primaryColor: AppColors.primaryColor,
        shadowColor: AppColors.shadowColor,
        splashColor: AppColors.splashColor,
      ),
      home: ChangeNotifierProvider(
        create: (context) => ActivePlayer(),
        child: HomeScreen(),
      ),
    );
  }
}
