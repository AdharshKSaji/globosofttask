
import 'package:get/get.dart';
import 'package:globosofttask/model/product.dart';
import 'package:globosofttask/view/apiservice/apiservice.dart';




class ProductsController extends GetxController {
  var products = <Products>[].obs;
  var isLoading = true.obs;
Apiservice apiservice=Apiservice();


  void fetchProducts() async {
   products.value=(await apiservice.Fetch())!;
   update();
  }

}
