void main() {
  List<String> friends = [];
  friends.addAll(["John", "Rocky", "Raj", "antony", "sara", "leo", "adam"]);


  List<String> namesStartingWithA = friends.where((friend) => friend.toLowerCase().startsWith('a')).toList();

  print(namesStartingWithA);  
}
