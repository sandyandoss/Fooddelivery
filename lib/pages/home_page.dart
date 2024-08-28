import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/components/my_current_location.dart';
import 'package:fooddelivery/components/my_description_box.dart';
import 'package:fooddelivery/components/my_drawer.dart';
import 'package:fooddelivery/components/my_food_tile.dart';
import 'package:fooddelivery/components/my_sliver_app_bar.dart';
import 'package:fooddelivery/components/my_tab_bar.dart';
import 'package:fooddelivery/models/food.dart';
import 'package:fooddelivery/models/restaurant.dart';
import 'package:fooddelivery/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  // Tab controller
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodCategory.values.length, vsync: this);
  }
//sort out and return a list of food items that belong to the specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu){
    return fullMenu.where((food)=> food.category == category).toList();
  }
  //   return list of food in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu){
    return FoodCategory.values.map((category) {
      //get category menu
  List <Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index )
      {
        //get individual food
      final food = categoryMenu[index];
      //return food tile UI
        return FoodTile(food: food, onTap: () => Navigator.push(context, MaterialPageRoute(
            builder: (context)=>FoodPage(food: food),
        ),
        ),
        );
      },
      );
    }).toList();
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                // My current location
                MyCurrentLocation(),
                // Description box
                MyDescriptionBox(),
              ],
            ),
            title: MyTabBar(tabController: _tabController), // Pass the tabController here
          ),
        ],
        body: Consumer <Restaurant>(
          builder:(context, restaurant ,child )=> TabBarView(
            controller: _tabController,
              children:
            getFoodInThisCategory(restaurant.menu),
        ),
        ),
      ),
    );
  }
}
