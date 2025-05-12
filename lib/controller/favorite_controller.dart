import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  List<ProductModel> favouriteList = [];

  void toggleFavourite(ProductModel product) {
    if (favouriteList.contains(product)) {
      favouriteList.remove(product);
    } else {
      favouriteList.add(product);
    }
    update();
  }

  bool isFavourite(ProductModel product) {
    return favouriteList.contains(product);
  }
}
