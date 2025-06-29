import 'package:flutter/material.dart';
import 'package:tic_tac_game/features/data/models/game_model.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/widget/gradient_text.dart';

class PlayBord extends StatelessWidget {
  const PlayBord({super.key, required this.gameOver, required this.game, required this.activePlayer});

  final bool gameOver;
  final Game game;
  final String activePlayer;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12),
      itemCount: 9,
      itemBuilder: (context, index) {
        return InkWell(
          splashColor: Colors.transparent,
          onTap: gameOver ? null : () {},
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.shadowColor,
                borderRadius: BorderRadius.circular(18)),
            child: Center(
              child: GradientText(
                index % 2 == 0 ? 'X' : 'O',
                style: TextStyle(fontSize: 80),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffE45171),
                    Color(0xffF8A79B),
                    Color(0xffF8D99B)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  onTap(int index){
    game.playGame(index, activePlayer);
  }
}
