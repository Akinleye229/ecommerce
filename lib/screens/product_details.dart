import 'package:flutter/material.dart';
import '../provider/products.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  //String title;

  //ProductDetailsScreen(this.title);
  static const routeName='/product-detail';
  @override
  Widget build(BuildContext context) {


    final productId =ModalRoute.of(context).settings.arguments as String; // extracting the id out
    final loadedProduct =Provider.of<Products>(context, listen: false, ).findById(productId);
    return Scaffold(appBar: AppBar(
      title: Text(loadedProduct.title),
    ),);
      

  }
}