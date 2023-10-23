import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/cart/cart_bloc.dart';
import '../model/product_model.dart';

class CartProductCard extends StatelessWidget {
  final Product product;
  final int quantity;

  const CartProductCard({
    Key? key,
    required this.product,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Image.network(
            product.imageUrl,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Color(0xff794428)),
                ),
                Text(
                  '\₵${product.price}',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Color(0xff794428)),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          BlocBuilder<CartBloc, CartState>(
            builder: (context, state) {
              if (state is CartLoading) {
                return CircularProgressIndicator();
              }
              if (state is CartLoaded) {
                return Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove_circle_outline),
                      onPressed: () {
                        context.read<CartBloc>().add(RemoveProduct(product));
                      },
                    ),
                    Text('$quantity', style: Theme
                        .of(context)
                        .textTheme
                        .headlineMedium!.copyWith(color: Colors.black)),
                    IconButton(
                      icon: Icon(Icons.add_circle_outline),
                      onPressed: () {
                        context.read<CartBloc>().add(AddProduct(product));
                      },
                    ),
                  ],
                );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}