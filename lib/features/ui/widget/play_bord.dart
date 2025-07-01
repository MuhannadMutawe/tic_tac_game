import 'package:flutter/material.dart';
import 'package:tic_tac_game/features/data/game_model.dart';
import 'package:tic_tac_game/features/data/player_model.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/widget/gradient_text.dart';

class PlayBord extends StatefulWidget {
  const PlayBord({
    super.key,
    required this.game,
    required this.isTwoPlayer,
  });

  final bool isTwoPlayer;
  final Game game;

  @override
  State<PlayBord> createState() => _PlayBordState();
}

class _PlayBordState extends State<PlayBord> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return InkWell(
          borderRadius: BorderRadius.circular(18),
          onTap:
              Game.gameOver
                  ? null
                  : () => setState(() {
                    if (!Player.isOContainsIndex(index) &&
                        !Player.isXContainsIndex(index)) {
                      widget.game.playGame(index, context,false);
                      Game.movementCounter++;
                      if (Game.movementCounter == 9) {
                        Game.gameOver = true;
                        Game.movementCounter = 0;
                        widget.game.checkWinner(context, false);
                      }
                      if (!widget.isTwoPlayer && !Game.gameOver) {
                        widget.game.autoPlay(context);
                        Game.movementCounter++;
                      }
                    }
                  }),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.shadowColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
              child: GradientText(
                Player.isXContainsIndex(index)
                    ? 'X'
                    : Player.isOContainsIndex(index)
                    ? 'O'
                    : '',
                style: TextStyle(fontSize: 80),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffE45171),
                    Color(0xffF8A79B),
                    Color(0xffF8D99B),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
