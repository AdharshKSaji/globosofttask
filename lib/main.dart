
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globosofttask/view/procductview/productview.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 // Apiservice apiservice=Apiservice();
  @override
  Widget build(BuildContext context) {
   // apiservice.Fetch();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductsView(),
    );
  }
}
