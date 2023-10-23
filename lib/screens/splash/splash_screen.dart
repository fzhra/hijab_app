import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:hijab_sales/model/product_model.dart';
//import 'package:hijab_sales/widgets/widgets.dart';
//import 'package:hijab_sales/model/category_model.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/splash';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () => Navigator.pushNamed(context, '/'));
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image(
            image: AssetImage('assets/images/logo.png'),
            width: 300,
            height: 300,
          ),
        ),
        SizedBox(height: 20),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Text(
            'Hijab Sles',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.black),
          ),
        )
      ],
    ));
  }
}
