
import 'package:flutter/material.dart';
import '../screens/product_details.dart';
import 'package:provider/provider.dart';
import '../provider/product.dart';


class ProductItem extends StatelessWidget {
 // final String id;
 // final String title;
 // final String imageUrl;


  //ProductItem(this.id, this.title, this.imageUrl);


  
  @override
  Widget build(BuildContext context) {
   final product= Provider.of<Product>(context, listen: false);
    return ClipRRect( // it allows us to give grid title radius
          borderRadius:BorderRadius.circular(10),
          child: GridTile(
        child: GestureDetector(
          onTap:(){
            Navigator.of(context).pushNamed(ProductDetailsScreen.routeName, arguments:product.id); // to navigate to the product details segment
          } ,
                  child: Image.network(product.imageUrl, 
      fit: BoxFit.cover,),
        ),
      footer:GridTileBar(
        backgroundColor: Colors.black87,
        leading: Consumer<Product>(
          builder:(ctx, product, child)=>IconButton(
            icon: Icon(product.isFavourite? Icons.favorite: Icons.favorite_border),
           onPressed:(){
              product.toggleFavoriteStatus();},color: Theme.of(context).accentColor, ),
        ),
        title:Text(product.title, textAlign:TextAlign.center ),
        trailing: IconButton(icon: Icon(Icons.shopping_cart),
         onPressed: null,
         color: Theme.of(context).accentColor),
        )
         ,),
    );
  }
}