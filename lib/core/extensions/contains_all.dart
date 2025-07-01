extension ContainsAll on List {

  containsAll(int one , int two , [int? three]){
    if(three == null){
      return contains(one) && contains(two);
    }else {
      return contains(one) && contains(two) && contains(three);
    }
  }
}