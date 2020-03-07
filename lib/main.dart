import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import './screens/products_overview_screen.dart';
import './providers/products_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (ctx) => ProductsProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          // textTheme: GoogleFonts.shadowsIntoLightTextTheme(
          //   Theme.of(context).textTheme,
          // ),
          // primaryTextTheme: GoogleFonts.shadowsIntoLightTextTheme(
          //   Theme.of(context).textTheme,
          // )
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
        },
      ),
    );
  }
}
