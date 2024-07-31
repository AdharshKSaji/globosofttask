
import 'dart:convert';

import 'package:globosofttask/model/product.dart';
import 'package:globosofttask/model/response.dart';

import 'package:http/http.dart' as http;

class Apiservice{
  Future<List<Products>?> Fetch() async {
    try {
      final response = await http.get(Uri.parse(
          'https://mansharcart.com/api/products/category/139/key/123456789'));
      print(response.body);
      if (response.statusCode == 200) {
        print(response.body);
        var jsonResponse = json.decode(response.body);
        var mainres = ResponseMain.fromJson(jsonResponse);
        var list = mainres.products;
        return list;
      }
    }catch(e){
      print(e);
    }
    return null;
  }
}
