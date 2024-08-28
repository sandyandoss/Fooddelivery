import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    //textStyle
    var myPrimaryTextStyle = TextStyle(
    color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle = TextStyle(
        color: Theme.of(context).colorScheme.primary);
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.only(left:25, right:25,bottom: 25),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Delivery fee
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('\$0.99',style:myPrimaryTextStyle),
                Text('Delivery fee',style:mySecondaryTextStyle),
              ],
            ),
          ),
          // Delivery time
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('15-30 min',style:myPrimaryTextStyle),
                Text('Delivery time',style:mySecondaryTextStyle,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
