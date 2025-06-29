import 'package:flutter/material.dart';
import 'package:tic_tac_game/features/ui/widget/display_result.dart';
import 'package:tic_tac_game/features/ui/widget/play_bord.dart';
import 'package:tic_tac_game/features/ui/widget/repeat_the_game_button.dart';
import 'package:tic_tac_game/features/ui/widget/switch_turn_off_on_two_player.dart';

import 'widget/it_is_player_turn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _activePlayer = 'X';
  bool _gameOver = false;
  int _turn = 0;
  String _result = 'xxxxxxxxx ';

  // Game game = Game();

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
                  });
                },
              ),
              ItIsPlayerTurn(
                activePlayer: _activePlayer,
              ),
              PlayBord(
                gameOver: _gameOver,
              ),
              DisplayResult(
                result: _result,
              ),
              RepeatTheGameButton(
                onPressed: () {
                  setState(() {
                    _activePlayer = 'X';
                    _gameOver = false;
                    _turn = 0;
                    _result = 'xxxxxxxx';
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