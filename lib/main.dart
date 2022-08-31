import 'package:flutter/material.dart';
import 'package:tut_shopapp/screens/card_screen.dart';
import 'package:tut_shopapp/screens/editProduct_screen.dart';
import 'package:tut_shopapp/screens/order_screen.dart';
import 'package:tut_shopapp/screens/product_details.dart';
import 'package:tut_shopapp/screens/user_screen.dart';
import './models/category.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        // by default, theme consist color app and font
        theme: ThemeData(
          primarySwatch: Colors.blue,
          cardColor: Colors.deepOrange,
          fontFamily: 'Lato',
          brightness: Brightness.dark,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 228, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 50, 50, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 50, 50, 1),
                ),
              ),
        ),
        home: Category(),
        routes: {
          Product_Details.routeName: (_) => Product_Details(),
          CardProduct.routeName: (_) => CardProduct(),
          UserProduct.routeName: (_) => UserProduct(),
          OrderProduct.routeName: (_) => OrderProduct(),
          EditProduct.routeName: (_) => EditProduct(),
          Category.routeName: (_) => Category(),
        },
      
    );
  }
}
