class Camera {
  // Private properties
  int _id;
  String _brand;
  String _color;
  double _price;

  // Constructor to initialize the properties
  Camera(this._id, this._brand, this._color, this._price);

  // Getter for id
  int get id => _id;

  // Setter for id
  set id(int value) {
    _id = value;
  }

  // Getter for brand
  String get brand => _brand;

  // Setter for brand
  set brand(String value) {
    _brand = value;
  }

  // Getter for color
  String get color => _color;

  // Setter for color
  set color(String value) {
    _color = value;
  }

  // Getter for price
  double get price => _price;

  // Setter for price
  set price(double value) {
    _price = value;
  }

  // Method to print camera details
  void printDetails() {
    print("Camera ID: $_id");
    print("Brand: $_brand");
    print("Color: $_color");
    print("Price: \$$_price");
  }
}

void main() {
  // Creating 3 objects of Camera class
  Camera camera1 = Camera(101, "Canon", "Black", 599.99);
  Camera camera2 = Camera(102, "Nikon", "Silver", 799.99);
  Camera camera3 = Camera(103, "Sony", "Red", 999.99);

  // Printing the details of each camera
  print("Camera 1 Details:");
  camera1.printDetails();
  print("\nCamera 2 Details:");
  camera2.printDetails();
  print("\nCamera 3 Details:");
  camera3.printDetails();
}
