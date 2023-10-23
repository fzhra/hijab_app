import 'package:flutter/material.dart';
import 'package:hijab_sales/model/model.dart';
import 'package:hijab_sales/screens/cart/cart_screen.dart';
import 'package:hijab_sales/screens/catalog/catalog_screens.dart';
import 'package:hijab_sales/screens/home/home_screen.dart';
import 'package:hijab_sales/screens/products/product_screen.dart';
import 'package:hijab_sales/screens/screens.dart';
import 'package:hijab_sales/model/category_model.dart';


class AppRouter{
  static Route onGenerateRoute(RouteSettings settings){
    print('This is route: ${settings.name}');

    switch (settings.name){
      case '/':
        return HomeScreen.route();
      case SplashScreen.routeName:
        return SplashScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case WishListScreen.routeName:
        return WishListScreen.route();


      default:
          return _errorRoute();
    }
  }
  static Route _errorRoute(){
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
      ),
    );
  }
}