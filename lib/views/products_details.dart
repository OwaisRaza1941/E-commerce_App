import 'package:e_commerce_app/controller/details_products_controller.dart';
import 'package:e_commerce_app/login_screens/color.dart';
import 'package:e_commerce_app/views/list_product_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce_app/controller/cart_controller.dart';
import 'package:e_commerce_app/views/cart_page.dart';
import 'package:e_commerce_app/controller/favorite_controller.dart';

class ProductsDetails extends StatelessWidget {
  final ProductModel product;

  ProductsDetails({required this.product});

  final DetailsProductsController productsController = Get.put(
    DetailsProductsController(),
  );

  final CartController cartController = Get.put(CartController());

  final FavoriteController favController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<DetailsProductsController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 20.0, left: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            favController.isFavourite(product)
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color:
                                favController.isFavourite(product)
                                    ? Colors.red
                                    : Colors.grey,
                          ),
                          onPressed: () {
                            favController.toggleFavourite(product);
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0, left: 15.0),
                    child: productDetailsImage(),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            productsController.cart.contains(products)
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color:
                                productsController.cart.contains(products)
                                    ? Colors.red
                                    : Colors.grey,
                          ),
                          onPressed: () {
                            productsController.addRemoveFromCart(products);
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Text(
                      product.piceis,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            productsController.subtractIncrease();
                          },
                          icon: Icon(Icons.remove),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              productsController.countIncrease.toString(),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            productsController.addIncrease();
                          },
                          icon: Icon(Icons.add, color: color2),
                        ),
                        SizedBox(width: 144),
                        Text(
                          product.price,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(thickness: 1, color: color5),
                  SizedBox(height: 5),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product Details',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down_rounded, size: 30),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Text(
                      product.description!,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(thickness: 1, color: color5),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nutritions',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 90,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(92, 192, 192, 192),
                              ),
                              child: Center(
                                child: Text(product.productNutritons!),
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward_ios, size: 18),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(thickness: 1, color: color5),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0, left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Review',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: color4),
                            Icon(Icons.star, color: color4),
                            Icon(Icons.star, color: color4),
                            Icon(Icons.star, color: color4),
                            Icon(Icons.star, color: color4),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward_ios, size: 18),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: 330,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          cartController.addRemovetoCart(product);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CartPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: color2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text('Add to Basket'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container productDetailsImage() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(47, 219, 219, 219),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          product.image,
          fit: BoxFit.contain,
          width: 950,
          height: 200,
        ),
      ),
    );
  }
}
