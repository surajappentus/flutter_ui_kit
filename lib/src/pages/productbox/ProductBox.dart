import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/src/model/Product.dart';
import 'package:flutter_ui_kit/src/pages/productbox/rating_box.dart';

class ProductBox extends StatelessWidget {
  const ProductBox({super.key, required this.item});

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/"+item.image ,height: 80.0, width: 80.0,),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 14.0),
                    ),
                    Text(
                      item.description,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 13.0),
                    ),
                    Text(
                      "Price : " + item.price.toString(),
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.0
                      ),
                    ),
                    RatingBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
