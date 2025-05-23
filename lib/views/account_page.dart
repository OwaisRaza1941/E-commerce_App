import 'package:e_commerce_app/components/function.dart';
import 'package:e_commerce_app/login_screens/color.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      {'icon': Icons.shopping_bag_outlined, 'title': 'Orders'},
      {'icon': Icons.credit_card, 'title': 'My Details'},
      {'icon': Icons.location_on_outlined, 'title': 'Delivery Address'},
      {'icon': Icons.payment, 'title': 'Payment Methods'},
      {'icon': Icons.sell_outlined, 'title': 'Promo Cord'},
      {'icon': Icons.notifications_none, 'title': 'Notifications'},
      {'icon': Icons.help_outline, 'title': 'Help'},
      {'icon': Icons.info_outline, 'title': 'About'},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            accountProfile(context),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: items.length,
                separatorBuilder: (context, index) {
                  return index == 2
                      ? Divider(thickness: 1, color: Colors.grey[300])
                      : SizedBox.shrink();
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(items[index]['icon'], color: Colors.black),
                    title: Text(
                      items[index]['title'],
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16),
                    onTap: () {},
                  );
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton.icon(
                onPressed: () {}, 
                icon: Icon(Icons.logout, color: color2),
                label: Text("Log Out"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  foregroundColor: color2,
                  backgroundColor: Color.fromRGBO(242, 243, 242, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
