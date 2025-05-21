import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<ProductModel> cartAdd = [];

  addRemovetoCart(ProductModel product) {
    if (cartAdd.contains(product)) {
      cartAdd.remove(product);
    } else {
      cartAdd.add(product);
    }
    print(cartAdd.contains(product));
    update();
  }

  bool isInCart(ProductModel product) {
    return cartAdd.contains(product);
  }

}
