import 'package:e_commerce_app/controller/favorite_controller.dart';
import 'package:e_commerce_app/login_screens/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavouritePage extends StatelessWidget {
  final FavoriteController favController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<FavoriteController>(
        builder: (favController) {
          return Padding(
            padding:  EdgeInsets.only(top:50.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Favourite',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 15),
                Divider(thickness: 1, color: color5),
                ListView.builder(
                  itemCount: favController.favouriteList.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final product = favController.favouriteList[index];
                    return Column(children: [
            
                    ],);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
