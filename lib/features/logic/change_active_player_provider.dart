import 'package:flutter/material.dart';

class ActivePlayer with ChangeNotifier{
  String activePlayer = 'X';
  String result = 'Start the Game 🏁.';

  setActivePlayer(String activePlayer){
    this.activePlayer = activePlayer;
    notifyListeners();
  }

  setResultGame(String result){
    this.result = result;
    notifyListeners();
  }
}