import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globosofttask/controller/productcontroller.dart';
import 'package:globosofttask/view/procductview/productdetailview.dart';



class ProductsView extends StatelessWidget {
  final ProductsController controller = Get.put(ProductsController());


  @override
  Widget build(BuildContext context) {
    controller.fetchProducts();
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: Obx(() {

          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: controller.products.length,
            itemBuilder: (context, index) {
              var product = controller.products[index];
              return GestureDetector(
                onTap: () {
                  Get.to(() => ProductDetailView(product: product));
                },
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Expanded(child:Img(img:'https://mansharcart.com/image/${product.thumb}' ),),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('${product.name}',style: TextStyle(fontWeight: FontWeight.bold),)),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('${product.price}',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ],
                    ),
                  ),
                ),
              );
            },
          );

      }),
    );
  }
}
class Img extends StatelessWidget {
  String? img;
   Img({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
    color: const Color(0xff7c94b6),
    image:  DecorationImage(
      image: NetworkImage('$img'),
      fit: BoxFit.cover,
    ),
    border: Border.all(
      width: .5,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
      height: 100,
     
    );
  }
}