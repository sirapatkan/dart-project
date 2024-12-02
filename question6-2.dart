class House {
  String? id;
  String? name;
  int? price;  

 
  House(String? id, String? name, int? price) {
    this.id = id;
    this.name = name;
    this.price = price;
  }

  @override
  String toString() {
    
    return "id: $id, name: $name, price: \$${price}";
  }
}

void main() {
 
  House house1 = House("001", "Villa in KaoYAI", 250000);
  House house2 = House("002", "Modern BKK", 350000);
  House house3 = House("003", "CONDO SIAM", 450000);

  
  List<House> houseList = [house1, house2, house3];

  
  for (var house in houseList) {
    print(house);
  }
}
