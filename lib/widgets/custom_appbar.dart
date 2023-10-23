import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    required this.title,
    Key? key});


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Color(0xffcabeb9),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(color: Colors.white),
        ),
      ),
      iconTheme: IconThemeData( color: Color(0xffffffff)),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {
            Navigator.pushNamed(context, '/wishlist');
          },
        )
      ],
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
