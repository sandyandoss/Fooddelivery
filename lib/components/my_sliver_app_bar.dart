import 'package:flutter/material.dart';
import 'package:fooddelivery/pages/cart_page.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;

  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340.0,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        //cart button
        IconButton(
          onPressed: () {
            //go to cart page
            Navigator.push((context), MaterialPageRoute(builder: (context)=> const CartPage(),
            ),
            );
          },
          icon: Icon(Icons.shopping_cart),
        ),
      ],
      foregroundColor:Theme.of(context).colorScheme.inversePrimary ,
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text(
        'Sunset Diner',
        textAlign: TextAlign.center,
      ),
      centerTitle: true, // Center the main title
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true, // Center the FlexibleSpaceBar title
        background: Padding(
          padding: const EdgeInsets.only(bottom:50.0),
          child: child,
        ),
        title: title,
        titlePadding: const EdgeInsets.only(left:0, right: 0), // Optional: adjust title padding
      ),
    );
  }
}
