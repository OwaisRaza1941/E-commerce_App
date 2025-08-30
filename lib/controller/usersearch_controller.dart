import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:get/get.dart';

class UsersearchController extends GetxController {
  var allProducts = <ProductModel>[].obs;
  var filteredProducts = <ProductModel>[].obs;
  Rx<String> searchText = ''.obs;

  @override
  void onInit() {
    super.onInit();
    allProducts.addAll([
      ProductModel(
        name: 'Red Apple',
        image: 'assets/home_product2.png',
        price: 4.99,
        isPopular: true,
        piceis: '1kg, Priceg',
      ),
      ProductModel(
        name: 'Diet Coke',
        image: 'assets/bevegares_product1.png',
        price: 1.99,
        isPopular: true,
        piceis: '355ml, Price',
      ),
      ProductModel(
        name: 'Egg Chicken White',
        image: 'assets/egg_chickenwhite.png',
        price: 1.99,
        isPopular: true,
        piceis: '4pcs, Priceg',
      ),
      ProductModel(
        name: 'Beef Bone',
        image: 'assets/home_product5.png',
        price: 4.99,
        description: 'Beef bones offer a wealth of nutrients...',
        piceis: '1kg, Priceg',
        isPopular: true,
      ),
      ProductModel(
        name: 'Coca Cala Can',
        image: 'assets/bevegares_product5.png',
        price: 4.99,
        piceis: '325ml, Price',
        isPopular: true,
      ),
      ProductModel(
        name: 'Egg Pasta',
        image: 'assets/egg_pasta.png',
        price: 4.99,
        piceis: '325ml, Price',
        isPopular: true,
      ),
    ]);
  }

  void search(String query) {
    searchText.value = query;

    if (query.isEmpty) {
      filteredProducts.clear();
    } else {
      filteredProducts.value =
          allProducts
              .where(
                (product) =>
                    product.name.toLowerCase().contains(query.toLowerCase()),
              )
              .toList();
    }
  }

  List<ProductModel> get popularProducts =>
      allProducts.where((p) => p.isPopular).toList();
}
