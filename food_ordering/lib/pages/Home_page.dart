import 'package:flutter/material.dart';
import 'package:food_ordering/components/my_current_location.dart';
import 'package:food_ordering/components/my_description_box.dart';
import 'package:food_ordering/components/my_drawer.dart';
import 'package:food_ordering/components/my_food_tile.dart';
import 'package:food_ordering/components/my_silver_bar.dart';
import 'package:food_ordering/components/my_tab_bar.dart';
import 'package:food_ordering/models/food.dart';
import 'package:food_ordering/models/restaurant.dart';
import 'package:food_ordering/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // tab controller
  late TabController _tableController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tableController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tableController.dispose();
    super.dispose();
  }

  // sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  // return list of foods in given category
  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
          itemCount: categoryMenu.length,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            final food = categoryMenu[index];
            return FoodTile(
              food: food,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FoodPage(food: food),
                ),
              ),
            );
          });
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBAr(
            title: MyTabBar(tabController: _tableController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                //  my current location
                const MyCurrentLocation(),
                // description box
                const MyDescriptionBox(),
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
            controller: _tableController,
            children: getFoodInThisCategory(restaurant.menu),
          ),
        ),
      ),
    );
  }
}
