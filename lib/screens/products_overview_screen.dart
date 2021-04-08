import'package:flutter/material.dart';

import '../widget/products_grid.dart';

enum FilterOptions {
  Favorites,
  All,
}


class ProductOverview extends StatefulWidget {

  
  @override
  _ProductOverviewState createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  var _showOnlyfavorites= false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Myshop'),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue){
              setState(() {
                 if (selectedValue==FilterOptions.Favorites){
                _showOnlyfavorites=true;

              }else{
                _showOnlyfavorites=false;

              }
              });
             
            },
            icon: Icon(Icons.more_vert),
            
            
            itemBuilder:(_)=>[
            PopupMenuItem(child: Text('only favorites'), value: FilterOptions.Favorites,),
            PopupMenuItem(child: Text('Show all'), value: FilterOptions.All),
            ]
          ),],
      ),
      body: ProductGrid(_showOnlyfavorites),
      
    );
  }
}

