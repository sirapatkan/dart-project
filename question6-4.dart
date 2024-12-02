class Animal {
  String? id;
  String? name;
  String? color;

  
  Animal(String? id, String? name, String? color) {
    this.id = id;
    this.name = name;
    this.color = color;
  }
}

class Cat extends Animal {
  String? sound;

 
  Cat(String? id, String? name, String? color, this.sound) : super(id, name, color);

  @override
  String toString() {
    return "id: $id, name: $name, color: $color, sound: $sound";
  }
}

void main() {
  
  Cat myCat = Cat("001", "Redrum", "Golden brown", "Meow");

  
  print(myCat);
}
