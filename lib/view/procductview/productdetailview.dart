import 'package:flutter/material.dart';
import 'package:globosofttask/model/product.dart';




class ProductDetailView extends StatelessWidget {
  final Products product;

  ProductDetailView({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${product.name}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
           Container(
       decoration: BoxDecoration(
    color: Color.fromARGB(255, 255, 255, 255),
    image:  DecorationImage(
      image: NetworkImage('https://mansharcart.com/image/${product.thumb}'),
      fit: BoxFit.fill,
    ),
    border: Border.all(
      width: .5,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
      height: 300,
     
    ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('${product.name}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
            const SizedBox(height: 8),
             Align(
              alignment: Alignment.centerLeft,child:Text('${product.price}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red)),
              ), const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,child:
              RichText(
  text: TextSpan(
   
    style: DefaultTextStyle.of(context).style,
    children:  <TextSpan>[
      TextSpan(text: 'Stock Status:', style: TextStyle(
        color: Colors.black87,
        fontSize: 14,
        decoration: TextDecoration.none
      )),
      TextSpan(text: ' ${product.stockStatus}',style: TextStyle(fontSize:14,color:  Colors.green,fontWeight: FontWeight.bold)),
    ],
  ),
)
              
              ,
            ),const SizedBox(height: 8),
             Align(
              alignment: Alignment.centerLeft,child:Text('Quantity: ${product.quantity}'),
             ),const SizedBox(height: 16),
             Align(
              alignment: Alignment.centerLeft,child:Text(product.description ?? 'No description available'),)
          ],
        ),
      ),
    );
  }
}