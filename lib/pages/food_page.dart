import 'package:flutter/material.dart';
import 'package:fooddelivery/components/my_button.dart';
import 'package:fooddelivery/models/food.dart';
import 'package:fooddelivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool>selectedAddons={};
   FoodPage({super.key, required this.food}){
   //initialize the selectod addons to be false
     for (Addon addon in food.availableAddons){
       selectedAddons[addon]=false;
     }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  //method to add to cart
  void addToCart(Food food, Map<Addon,bool> selectedAddons){
    //close current page and go to menu page
    Navigator.pop(context);
    //format the selected addons
    List<Addon> currentlySelectedAddons=[];
    for (Addon addon in widget.food.availableAddons){
      if(widget.selectedAddons[addon] == true){
        currentlySelectedAddons.add(addon);
      }
    }
    //add to cart
    context.read<Restaurant>().addToCart(food,currentlySelectedAddons);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //food image
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                widget.food.imagePath,
                fit: BoxFit.cover, // Or use BoxFit.fitWidth
              ),
            ),

            Padding(
            padding: const EdgeInsets.all(25.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    //food name
    Text(widget.food.name, style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),),
      //food price

      Text('\$'+widget.food.price.toString(),
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontSize: 16,
        ),),
    SizedBox(height: 10),
    //food description

    Text(widget.food.description,
      style: TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    ),),

      SizedBox(height: 10),
    Divider(color: Theme.of(context).colorScheme.secondary,),
      SizedBox(height: 10),
    //addon
      Text('Add-ons', style: TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
        fontSize: 16,
        fontWeight: FontWeight.bold,

      ),),
      SizedBox(height: 10),
    Container(
      decoration: BoxDecoration(
        border: Border.all(

            color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListView.builder(
      shrinkWrap:true,
      itemCount: widget.food.availableAddons.length,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index){
      //get individual addon
      Addon addon = widget.food.availableAddons[index];

      return CheckboxListTile(
      title: Text(addon.name ),
      subtitle: Text('\$'+addon.price.toString(),style:
        TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary,),),

      value: widget.selectedAddons[addon],
      onChanged: (bool? value){
        setState(() {
          widget.selectedAddons[addon] = value!;
        });
      },
      );
      }
      ),
    )
    ],
    ),
    ),
    //botton to add to cart
      MyButton(
          onTap: ()=> addToCart(widget.food, widget.selectedAddons),
          text:('Add to cart'),
      ),
            SizedBox(height: 30),
    ],

    ),
      ));
  }
}