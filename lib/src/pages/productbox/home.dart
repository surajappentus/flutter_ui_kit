import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/src/pages/productbox/product_page.dart';
import '../../model/Product.dart';
import '../productbox/ProductBox.dart';

class Home extends StatelessWidget {
  Home({super.key, required this.title});

  final String title;
  final items = Product.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: ProductBox(item: items[index],),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductPage(item: items[index])
                  )
                );
              },
            );
          },
        )
    );
  }

}