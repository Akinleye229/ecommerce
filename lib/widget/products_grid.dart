import 'package:flutter/material.dart';
//import 'package:nineaapp/provider/product.dart';

import 'package:provider/provider.dart';

import '../provider/products.dart';
import './product_item.dart';



class ProductGrid extends StatelessWidget {
  
  final bool showFavs;

 ProductGrid(this.showFavs);
  

  @override
  Widget build(BuildContext context) {
   final productData= Provider.of<Products>(context); // allows to listen to the product provider from the products dart
   final product= showFavs?productData.favoriteItems: productData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: product.length,
      itemBuilder: (ctx, i)=> ChangeNotifierProvider.value(
      value: product[i],
      //create: (c)=>product[i] 

      child:ProductItem(
       // product[i].id,
        // product[i].title, 
        //product[i].imageUrl,
        

      ), )
       ,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 3/2, crossAxisSpacing: 20, mainAxisSpacing: 10),
      // to allow the grid pictures be in one ratio two 
      );
  }
}