import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));
String productsToJson(Products data) => json.encode(data.toJson());
class Products {
  Products({
      this.id, 
      this.name, 
      this.description, 
      this.stockStatus, 
      this.manufacturer, 
      this.quantity, 
      this.reviews, 
      this.price, 
      this.thumb, 
      this.special, 
      this.rating,});

  Products.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    stockStatus = json['stock_status'];
    manufacturer = json['manufacturer'];
    quantity = json['quantity'];
    reviews = json['reviews'];
    price = json['price'];
    thumb = json['thumb'];
    special = json['special'];
    rating = json['rating'];
  }
  String? id;
  String? name;
  dynamic description;
  String? stockStatus;
  dynamic manufacturer;
  String? quantity;
  dynamic reviews;
  String? price;
  String? thumb;
  bool? special;
  num? rating;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['description'] = description;
    map['stock_status'] = stockStatus;
    map['manufacturer'] = manufacturer;
    map['quantity'] = quantity;
    map['reviews'] = reviews;
    map['price'] = price;
    map['thumb'] = thumb;
    map['special'] = special;
    map['rating'] = rating;
    return map;
  }

}