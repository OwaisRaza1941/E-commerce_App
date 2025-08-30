import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<ProductModel> cartAdd = [];

  Rx<int> quantity = 1.obs; // Quantity tracking
  Rx<double> totalPrice = 0.0.obs; // Total price tracking

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

  void additionPrice(ProductModel cartItem) {
    quantity.value++;
    totalPrice.value += cartItem.price; // Add price for each quantity
    update();
  }

  void subtractPrice(ProductModel cartItem) {
    if (quantity.value > 1) {
      quantity.value--;
      totalPrice.value -= cartItem.price; // Subtract price for each quantity
    }
    update();
  }
}
