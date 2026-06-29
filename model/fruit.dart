import 'package:http/http.dart' as http;

class Fruit {
  final int id;
  final String title;
  final String image;
  final int quantity;

  Fruit(this.id, this.title, this.image, this.quantity);

  // fromMap
  factory Fruit.fromMap(Map<String, dynamic> json) {
    return Fruit(json['id'], json['title'], json['image'], json['quantity']);
  }

  // FromJson
  factory Fruit.fromJson(Map<String, dynamic> json) {
    return Fruit(json['id'], json['title'], json['image'], json['quantity']);
  }


  

}

