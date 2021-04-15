import 'dart:convert';

class Products {
  dynamic product_name,
      description,
      price,
      category,
      date_of_purchase,
      place,
      image,
      user_id,
      due_period;
  Products(
      {this.category,
      this.date_of_purchase,
      this.description,
      this.due_period,
      this.price,
      this.place,
      this.image,
      this.user_id,
      this.product_name});

  factory Products.fromJson(Map<String, dynamic> jsonData) {
    return Products(
        price: jsonData['price'],
        place: jsonData['place'],
        product_name: jsonData['product_name'],
        description: jsonData['description'],
        date_of_purchase: jsonData['date_of_purchase'],
        due_period: jsonData['due_period'],
        image: jsonData['image'],
        user_id: jsonData['user_id'],
        category: jsonData['category']);
  }

  static Map<String, dynamic> toMap(Products task) => {
        "product_name": task.product_name,
        "description": task.description,
        "price": task.price,
        "date_of_purchase": task.date_of_purchase,
        "due_period": task.due_period,
        "category": task.category,
        "place": task.place,
        "image": task.image,
        "user_id": task.user_id
      };
  static String encodeTasks(List<Products> tasks) => json.encode(tasks
      .map<Map<String, dynamic>>((tasks) => Products.toMap(tasks))
      .toList());

  static List<Products> decodeTasks(String tasks) =>
      (json.decode(tasks) as List<dynamic>)
          .map<Products>((item) => Products.fromJson(item))
          .toList();
}
