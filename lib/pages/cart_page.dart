import 'package:flutter/material.dart';
import 'package:fooddelivery/components/my_button.dart';
import 'package:fooddelivery/components/my_cart_tile.dart';
import 'package:fooddelivery/models/restaurant.dart';
import 'package:fooddelivery/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child){
          //cart
          final userCart = restaurant.cart;

          //scaffold UI
          return Scaffold(
              appBar: AppBar(
                title: Text('Cart'),
                backgroundColor: Colors.transparent,
                foregroundColor: Theme.of(context).colorScheme.inversePrimary,
                actions: [
                  //clear cart Button
                  IconButton(
                    icon: Icon(Icons.delete),

                    onPressed: (){
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                           title: Text("Are you sure you want to clear the cart?"),
                           actions: [
                          //cancel buttton
                          TextButton(
                              onPressed:() => Navigator.pop(context),
                          child: const Text ("Cancel"),
                          ),

                          //yes button
                             TextButton(
                               onPressed:() {
                                 Navigator.pop(context);
                                  restaurant.clearCart();
                                  },
                             child: Text('Yes'),
                      ),
                        ],
                      )
                      );
                    },
                  ),
                ],
              ),
              body: Column(
                children: [

                  //list of cart


                  Expanded(
                    child: Column(
                      children: [
                        userCart.isEmpty
                            ? Expanded(child: Center(child: Text('Cart is empty ..'),
                        ),
                        )
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context,index){
                                  //get individual cart item
                                  final cartItem = userCart[index];

                                  //retutn cart title UI
                                  return MyCartTile(cartItem: cartItem);
                                },
                            ),
                        ),
                      ],
                    ),
                  ),

                  //bottom bo pay
                  MyButton(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage(),)
                  ),
                  text:'Go to checkout',),
                  SizedBox(height: 25,)
                ],
              ),
          );
        },
    );
  }
}
