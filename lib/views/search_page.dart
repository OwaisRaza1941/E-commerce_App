import 'package:e_commerce_app/components/function.dart';
import 'package:e_commerce_app/controller/usersearch_controller.dart';
import 'package:e_commerce_app/views/filter_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final UsersearchController searchCtrl = Get.put(UsersearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50.0, right: 10.0, left: 10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: serchPageSearchBar()),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FilterPage()),
                    );
                  },
                  icon: Icon(Icons.tune, size: 25),
                ),
              ],
            ),
            SizedBox(height: 20),
            Obx(() {
              final query = searchCtrl.searchText.value;
              final results = searchCtrl.filteredProducts;
              final showList =
                  query.isEmpty ? searchCtrl.popularProducts : results;

              if (query.isNotEmpty && results.isEmpty) {
                return Center(child: Text("No product found"));
              }
              return Expanded(
                child: GridView.builder(
                  itemCount: showList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.80,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    final product = showList[index];
                    return productCard(
                      context,
                      product,
                      nameProduct: product.name,
                      price: product.price,
                      piceis: product.piceis,
                      imagePath: product.image,
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
