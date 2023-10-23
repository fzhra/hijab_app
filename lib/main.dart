import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hijab_sales/blocs/cart/cart_bloc.dart';
import 'package:hijab_sales/blocs/wishlist/wishlist_bloc.dart';
import 'package:hijab_sales/config/app_router.dart';
import 'package:hijab_sales/config/theme.dart';
import 'package:hijab_sales/screens/splash/splash_screen.dart';
import 'package:hijab_sales/simple_bloc-observer.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => WishlistBloc()..add(LoadWishlist()),
        ),
        BlocProvider(
          create: (_) => CartBloc()..add(LoadCart()), // Trigger initial loading
        ),
      ],
      child: MaterialApp(
        title: "My Hijab",
        debugShowCheckedModeBanner: false,
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}


