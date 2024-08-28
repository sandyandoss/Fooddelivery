import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddelivery/models/cart_item.dart';
import 'package:fooddelivery/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and a pickle  ",
        imagePath: "lib/images/burgers/cheese.png",
        price: 8.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 3.99),
        ]
    ),
    Food(
        name: "BBQ Bacon Burger",
        description: "A juicy beef patties with crispy bacon, smoky barbecue sauce, and melted cheese, all nestled within a toasted bun  ",
        imagePath: "lib/images/burgers/bbq_burger.png",
        price: 10.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Grilled Onions', price: 0.99),
          Addon(name: 'Jalapenos', price: 1.49),
          Addon(name: 'Extra BBQ sauce', price: 1.99),
        ]
    ),
    Food(
        name: "Veggie Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and a pickle ",
        imagePath: "lib/images/burgers/vege.png",
        price: 9.49,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Vegan cheese', price: 0.99),
          Addon(name: 'Tomato', price: 0.99),
          Addon(name: 'Pickles', price: 1.99),
        ]
    ),
    Food(
        name: "Aloha Burger",
        description: "A tropical twist on a classic, featuring a juicy beef patty topped with grilled pineapple, crispy bacon, melted cheese, and a tangy teriyaki sauce, all nestled in a toasted bun",
        imagePath: "lib/images/burgers/aloha_burger.png",
        price: 9.39,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Teriyaki Glaze', price: 0.99),
          Addon(name: 'Extra Pineapple', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
        ]
    ),
    Food(
        name: "Blue-moon Burger",
        description: "A gourmet delight, combining a succulent beef patty with tangy blue cheese, caramelized onions, and crispy bacon, all served on a toasted bun for a rich and savory experience ",
        imagePath: "lib/images/burgers/bluemoon.png",
        price: 9.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Spicy Mayo', price: 0.99),
          Addon(name: 'Fried Eggs', price: 4.99),
          Addon(name: 'Mushrooms', price: 1.99),
        ]
    ),
    //salads
    Food(
        name: "Caesar Salad",
        description: "A classic favorite, featuring crisp romaine lettuce tossed with creamy Caesar dressing",
        imagePath: "lib/images/salads/ceasar.png",
        price: 7.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Parmesan', price: 0.99),
          Addon(name: 'Grilled Chicken', price: 1.49),
          Addon(name: 'Mushrooms', price: 1.99),
        ]
    ),
    Food(
        name: "Classic Salad",
        description: "A vibrant dish, combining tender quinoa with fresh vegetables such as cherry tomatoes",
        imagePath: "lib/images/salads/salad.png",
        price: 5.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Olive Oil', price: 0.99),
          Addon(name: 'Extra Cucumber', price: 1.49),
          Addon(name: 'Tomatoes', price: 1.00),
        ]
    ),
    Food(
        name: "Tabbouleh ",
        description: "A Lebanese dish, contains parsley, tomato.and onion",
        imagePath: "lib/images/salads/tabbouleh.png",
        price: 10.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Tomatoes', price: 1.99),
          Addon(name: 'Bell Peppers', price: 2.49),
          Addon(name: 'Onion', price: 1.09),
        ]
    ),
    Food(
        name: "Quinoa Salad",
        description: "A wholesome and vibrant dish, combining tender quinoa with fresh vegetables such as cherry tomatoes",
        imagePath: "lib/images/salads/quino.png",
        price: 9.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Cherry Tomato', price: 0.99),
          Addon(name: 'Olive Oil', price: 1.49),
          Addon(name: 'Onion', price: 1.99),
        ]
    ),
    Food(
        name: "Greek Salad",
        description: "A refreshing and vibrant dish, featuring a medley of crisp cucumbers, all tossed in a light olive oil and lemon dressing",
        imagePath: "lib/images/salads/greek.png",
        price: 4.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Feta Cheese', price: 3.99),
          Addon(name: 'Cucumbers', price: 3.49),
          Addon(name: 'Juicy Tomatoes', price: 2.99),
        ]
    ),

    //sides
    Food(
        name: "BBQ Sauce",
        description: "A tangy and smoky BBQ sauce perfect for dipping or as a flavorful addition to your meal.",
        imagePath: "lib/images/sides/bbq.png",
        price: 1.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra Sauce', price: 0.99),
          Addon(name: 'Spicy Kick', price: 1.49),
        ]
    ),
    Food(
        name: "Fries",
        description: "Crispy and golden fries, seasoned to perfection and served hot for a classic side dish.",
        imagePath: "lib/images/sides/fries.png",
        price: 3.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Cheese Sauce', price: 1.49),
          Addon(name: 'Garlic Parmesan', price: 1.99),
          Addon(name: 'Extra Salt', price: 0.49),
        ]
    ),
    Food(
        name: "Hummus",
        description: "A smooth and creamy hummus made from blended chickpeas, tahini, and olive oil, served with pita bread or veggies.",
        imagePath: "lib/images/sides/hummus.png",
        price: 4.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Pita Bread', price: 1.49),
          Addon(name: 'Extra Olive Oil', price: 0.99),
          Addon(name: 'Veggie Sticks', price: 2.49),
        ]
    ),
    Food(
        name: "Onion Bread",
        description: "Warm and fluffy bread baked with caramelized onions for a savory and aromatic side dish.",
        imagePath: "lib/images/sides/onion_bread.png",
        price: 3.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Garlic Butter', price: 1.29),
          Addon(name: 'Cheese Topping', price: 1.99),
        ]
    ),
    Food(
        name: "Toum",
        description: "A creamy garlic sauce with a tangy flavor, perfect for dipping or adding a robust taste to your dishes.",
        imagePath: "lib/images/sides/toum.png",
        price: 2.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra Garlic', price: 1.29),
          Addon(name: 'Lemon Zest', price: 0.99),
        ]
    ),

    //desserts
    Food(
        name: "Chocolate Balls",
        description: "Decadent chocolate balls made with rich chocolate and a hint of coffee, rolled in cocoa powder for a perfect sweet treat.",
        imagePath: "lib/images/desserts/chocolate_balls.png",
        price: 5.49,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Extra Chocolate Drizzle', price: 1.49),
          Addon(name: 'Nuts', price: 1.99),
          Addon(name: 'Whipped Cream', price: 0.99),
        ]
    ),
    Food(
        name: "Kunafa",
        description: "A traditional Middle Eastern dessert made with layers of shredded phyllo dough and sweet cheese, topped with a fragrant syrup and pistachios.",
        imagePath: "lib/images/desserts/kunafa.png",
        price: 6.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Pistachios', price: 2.49),
          Addon(name: 'Honey Drizzle', price: 1.49),
          Addon(name: 'Rose Water', price: 0.99),
        ]
    ),
    Food(
        name: "Tiramisu",
        description: "An Italian classic, featuring layers of coffee-soaked ladyfingers and mascarpone cream, dusted with cocoa powder for a luxurious dessert.",
        imagePath: "lib/images/desserts/tiramisu.png",
        price: 7.49,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Extra Mascarpone', price: 1.99),
          Addon(name: 'Chocolate Shavings', price: 1.49),
          Addon(name: 'Coffee Syrup', price: 1.29),
        ]
    ),
    Food(
        name: "Ice Cream",
        description: "A creamy and delightful ice cream, available in a variety of flavors to satisfy your sweet tooth.",
        imagePath: "lib/images/desserts/icecream.png",
        price: 4.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Sprinkles', price: 0.99),
          Addon(name: 'Chocolate Chips', price: 1.49),
          Addon(name: 'Fruit Toppings', price: 1.99),
        ]
    ),
    Food(
        name: "Dubai Chocolate",
        description: "Luxurious Dubai chocolate with rich, velvety textures and an exotic blend of spices for a unique and indulgent treat.",
        imagePath: "lib/images/desserts/dubai_chocolat.png",
        price: 8.49,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: 'Spice Mix', price: 2.49),
          Addon(name: 'Caramel Drizzle', price: 1.99),
          Addon(name: 'Sea Salt', price: 0.99),
        ]
    ),

    //drinks
    Food(
        name: "Tea",
        description: "A soothing and aromatic cup of tea, available in various flavors like black, green, or herbal.",
        imagePath: "lib/images/drinks/tea.png",
        price: 2.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Lemon Slice', price: 0.49),
          Addon(name: 'Honey', price: 0.99),
          Addon(name: 'Extra Sugar', price: 0.29),
        ]
    ),
    Food(
        name: "Water",
        description: "Refreshing and pure bottled water, perfect for staying hydrated.",
        imagePath: "lib/images/drinks/water.png",
        price: 1.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Lemon Wedge', price: 0.29),
          Addon(name: 'Mint Leaves', price: 0.49),
        ]
    ),
    Food(
        name: "Pepsi",
        description: "A classic cola beverage with a fizzy and sweet flavor, ideal for a refreshing drink.",
        imagePath: "lib/images/drinks/pepsi.png",
        price: 2.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Ice', price: 0.29),
          Addon(name: 'Lime Twist', price: 0.49),
        ]
    ),
    Food(
        name: "Cappuccino",
        description: "A rich and creamy cappuccino with a perfect balance of espresso, steamed milk, and frothy foam, offering a delightful coffee experience.",
        imagePath: "lib/images/drinks/cupp.png",
        price: 3.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Extra Shot of Espresso', price: 1.29),
          Addon(name: 'Flavored Syrup', price: 0.99),
          Addon(name: 'Whipped Cream', price: 0.79),
        ]
    ),
    Food(
        name: "Carrot Juice",
        description: "A healthy and vibrant juice made from fresh carrots, offering a naturally sweet and nutritious drink.",
        imagePath: "lib/images/drinks/carrot_juice.png",
        price: 4.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Ginger Infusion', price: 0.99),
          Addon(name: 'Orange Slice', price: 0.49),
        ]
    ),

  ];


  //getters
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  //O P E R A T  I O N
  // user cart

  final List<CartItem> _cart = [];

//add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
//see if theres a cart item already with the same food and selected addons

    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same
      bool isSameFood = item.food == food;
      //check if the list of the selected addons are the same
      bool isSameAddons =
      ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    //if items already exists, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise , add a  new item to the cart
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

//remove from cart
 void removeFromCart(CartItem cartItem){
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex != -1) {
      if (_cart[cartIndex].quantity>1){
        _cart[cartIndex].quantity--;
      }else{
        _cart.removeAt(cartIndex);
    }
  }
    notifyListeners();
}
//get total price of cart
double getTotalPrice(){
    double total =0.0;

    for(CartItem cartItem in _cart){
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons){
        itemTotal += addon.price;
      }

        total += itemTotal * cartItem.quantity;
    }
    return total;
}


//get total nb of items in cart
int getTotalItemCount(){
    int totalItemCount =0;

    for (CartItem cartItem in _cart){
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
}


//clear cart
void clearCart(){
    _cart.clear();
    notifyListeners();
}


//H E L P E R S
//generate receipt
  String displayCartReceipt(){
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    //date to be seconds only
    String formattedDate = DateFormat ('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln('--------');

    for(final cartItem in _cart){
      receipt.writeln("${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");

      if (cartItem.selectedAddons.isNotEmpty){
        receipt.writeln('Add-ons: ${_formatAddons(cartItem.selectedAddons)}');
      }
      receipt.writeln();
    }
    receipt.writeln('--------');
    receipt.writeln();
    receipt.writeln('Total items:   ${getTotalItemCount()}');
    receipt.writeln('Total price:   ${_formatPrice(getTotalPrice())}');
    return receipt.toString();
  }
//format double value into money
String _formatPrice(double price){
    return '\$${price.toStringAsFixed(2)}';
}
//format list of addons into a string summary
String _formatAddons(List<Addon> addons){
    return addons
        .map((addon) => '${addon.name} (${_formatPrice(addon.price)}')
        .join(',');
}
    }