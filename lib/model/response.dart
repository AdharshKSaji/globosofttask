import 'package:globosofttask/model/product.dart';

import 'dart:convert';

ResponseMain responseMainFromJson(String str) => ResponseMain.fromJson(json.decode(str));
String responseMainToJson(ResponseMain data) => json.encode(data.toJson());
class ResponseMain {
  ResponseMain({
      this.success, 
      this.products,});

  ResponseMain.fromJson(dynamic json) {
    success = json['success'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products?.add(Products.fromJson(v));
      });
    }
  }
  bool? success;
  List<Products>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    if (products != null) {
      map['products'] = products?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}