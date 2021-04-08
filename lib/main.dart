import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/products_overview_screen.dart';
import './screens/product_details.dart';
import './provider/products.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (ctx)=>Products(),
          child: MaterialApp(
      
          title:'kilassic shop',
          theme:ThemeData(
            primarySwatch:Colors.purple,
            accentColor:Colors.deepOrange,
            fontFamily: 'Lato',

          ),
       

        home:ProductOverview(),

        routes: {
          ProductDetailsScreen.routeName: (ctx)=> ProductDetailsScreen(),
          // to allow us to navigate to route product details screen

        },
        

        ),
    );
      
  
  }
}