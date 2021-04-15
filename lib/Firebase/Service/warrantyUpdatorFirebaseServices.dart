import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:notification/Firebase/Model/warrantyUpdatorProductModel.dart';
import 'package:notification/Firebase/Model/warrantyUpdatorUserModel.dart';

class DatabaseServices {
  final CollectionReference users =
      FirebaseFirestore.instance.collection("users");

  Future newUserAdded(Users new_users) async {
    print("added");
    return await users.doc(new_users.user_name).set({
      "user_id": new_users.user_id,
      "user_name": new_users.user_name,
      "email_id": new_users.email_id,
      "profile_pic": new_users.profile_pic
    });
  }

  final CollectionReference products =
      FirebaseFirestore.instance.collection("products");

  Future newProductAdded(Products new_product) async {
    print("added");
    return await products.doc(new_product.product_name).set({
      "product_name": new_product.product_name,
      "description": new_product.description,
      "category": new_product.category,
      "price": new_product.price,
      "date_of_purchase": new_product.date_of_purchase,
      "due_period": new_product.due_period,
      "place": new_product.place,
      "image": new_product.image,
      "user_id": new_product.user_id
    });
  }
}
