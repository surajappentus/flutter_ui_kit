import 'package:flutter/material.dart';
import 'package:flutter_ui_kit/src/model/Product.dart';
import 'package:flutter_ui_kit/src/pages/productbox/rating_box.dart';

class ProductPage extends StatelessWidget{
  const ProductPage({super.key, required this.item});
  final Product item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/"+ item.image),
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
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}