import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_game/features/logic/change_active_player_provider.dart';
import 'package:tic_tac_game/features/ui/widget/display_result.dart';
import 'package:tic_tac_game/features/ui/widget/play_bord.dart';
import 'package:tic_tac_game/features/ui/widget/repeat_the_game_button.dart';
import 'package:tic_tac_game/features/ui/widget/switch_turn_off_on_two_player.dart';

import '../data/game_model.dart';
import '../data/player_model.dart';
import 'widget/it_is_player_turn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Game _game = Game();
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 18, right: 18, top: 30, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SwitchTurnOffOnTwoPlayer(
                isSwitched: _isSwitched,
                onChanged: (value) {
                  setState(() {
                    _isSwitched = value;
                    Game.movementCounter = 0;
                    Provider.of<ActivePlayer>(
                      context,
                      listen: false,
                    ).setActivePlayer('X');
                    Provider.of<ActivePlayer>(
                      context,
                      listen: false,
                    ).setResultGame('Start the Game 🏁.');
                    Player.playerX = [];
                    Player.playerO = [];
                    Game.movementCounter = 0;
                    Game.gameOver = false;
                  });
                },
              ),
              ItIsPlayerTurn(),
              PlayBord(isTwoPlayer: _isSwitched, game: _game),
              DisplayResult(),
              RepeatTheGameButton(
                onPressed: () {
                  setState(() {
                    Provider.of<ActivePlayer>(
                      context,
                      listen: false,
                    ).setActivePlayer('X');
                    Provider.of<ActivePlayer>(
                      context,
                      listen: false,
                    ).setResultGame('Start the Game 🏁.');
                    Player.playerX = [];
                    Player.playerO = [];
                    Game.movementCounter = 0;
                    Game.gameOver = false;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
