import 'package:get/get.dart';

class DetailsProductsController extends GetxController {
  int countIncrease = 1;

  addIncrease() {
    countIncrease++;
    update();
  }

  subtractIncrease() {
    if (countIncrease < 2) {
      countIncrease + 1;
    } else {
      countIncrease--;
    }
    update();
  }

  List cart = [];

  void addRemoveFromCart(products) {
    if (cart.contains(products)) {
      cart.remove(products);
    } else {
      cart.add(products);
    }
    update();
    print(cart);
  }
}
