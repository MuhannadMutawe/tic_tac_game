class Player{
  static String activePlayer = 'X';
  static const empty = '';

  static List<int> playerX = [];
  static List<int> playerO = [];

  static bool isXContainsIndex(int index){
    return playerX.contains(index);
  }

  static bool isOContainsIndex(int index){
    return playerO.contains(index);
  }
}