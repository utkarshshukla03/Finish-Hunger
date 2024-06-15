import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:food_ordering/models/cart_items.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // burger
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy aalu patty with melted cheddar",
      imagePath: "lib/images/burger/burger1.0.jpg",
      price: 200,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Veggies", price: 30),
        Addon(name: "Grilled", price: 15),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy aalu patty with melted cheddar",
      imagePath: "lib/images/burger/burger2.0.jpg",
      price: 350,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Veggies", price: 30),
        Addon(name: "Grilled", price: 15),
      ],
    ),

    Food(
      name: "Classic Cheeseburger",
      description: "A juicy aalu patty with melted cheddar",
      imagePath: "lib/images/burger/burger3.0.jpg",
      price: 201,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Veggies", price: 30),
        Addon(name: "Grilled", price: 15),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy aalu patty with melted cheddar",
      imagePath: "lib/images/burger/burger4.0.jpg",
      price: 250,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Veggies", price: 30),
        Addon(name: "Grilled", price: 15),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description: "A juicy aalu patty with melted cheddar",
      imagePath: "lib/images/burger/burger5.0.jpg",
      price: 300,
      category: FoodCategory.Burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 20),
        Addon(name: "Veggies", price: 30),
        Addon(name: "Grilled", price: 15),
      ],
    ),

    // coffee

    Food(
      name: "Cappaciuno Coffee",
      description: "Coffee that open  your heart and soul.",
      imagePath: "lib/images/coffees/coffee1.0.jpg",
      price: 200,
      category: FoodCategory.Coffee,
      availableAddons: [
        Addon(name: "Dark", price: 30),
        Addon(name: "Sugar", price: 35),
        Addon(name: "Biscuit", price: 15),
      ],
    ),
    Food(
      name: "Cappaciuno Coffee",
      description: "Coffee that open  your heart and soul.",
      imagePath: "lib/images/coffees/coffee2.0.jpg",
      price: 200,
      category: FoodCategory.Coffee,
      availableAddons: [
        Addon(name: "Dark", price: 30),
        Addon(name: "Sugar", price: 35),
        Addon(name: "Biscuit", price: 15),
      ],
    ),
    Food(
      name: "Cappaciuno Coffee",
      description: "Coffee that open  your heart and soul.",
      imagePath: "lib/images/coffees/coffee3.0.jpg",
      price: 200,
      category: FoodCategory.Coffee,
      availableAddons: [
        Addon(name: "Dark", price: 30),
        Addon(name: "Sugar", price: 35),
        Addon(name: "Biscuit", price: 15),
      ],
    ),
    Food(
      name: "Cappaciuno Coffee",
      description: "Coffee that open  your heart and soul.",
      imagePath: "lib/images/coffees/coffee4.0.jpg",
      price: 200,
      category: FoodCategory.Coffee,
      availableAddons: [
        Addon(name: "Dark", price: 30),
        Addon(name: "Sugar", price: 35),
        Addon(name: "Biscuit", price: 15),
      ],
    ),
    Food(
      name: "Cappaciuno Coffee",
      description: "Coffee that open  your heart and soul.",
      imagePath: "lib/images/coffees/coffee5.0.jpg",
      price: 200,
      category: FoodCategory.Coffee,
      availableAddons: [
        Addon(name: "Dark", price: 30),
        Addon(name: "Sugar", price: 35),
        Addon(name: "Biscuit", price: 15),
      ],
    ),

    // desserts
    Food(
      name: "Sweet Desserts",
      description: "Pastries that can melt your mouth",
      imagePath: "lib/images/desserts/dessert1.0.jpg",
      price: 200,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Hot Chocolate", price: 20),
        Addon(name: "Powder", price: 30),
        Addon(name: "Cheese", price: 15),
      ],
    ),
    Food(
      name: "Sweet Desserts",
      description: "Pastries that can melt your mouth",
      imagePath: "lib/images/desserts/dessert2.0.jpg",
      price: 200,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Hot Chocolate", price: 20),
        Addon(name: "Powder", price: 30),
        Addon(name: "Cheese", price: 15),
      ],
    ),
    Food(
      name: "Sweet Desserts",
      description: "Pastries that can melt your mouth",
      imagePath: "lib/images/desserts/dessert3.0.jpg",
      price: 200,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Hot Chocolate", price: 20),
        Addon(name: "Powder", price: 30),
        Addon(name: "Cheese", price: 15),
      ],
    ),
    Food(
      name: "Sweet Desserts",
      description: "Pastries that can melt your mouth",
      imagePath: "lib/images/desserts/dessert4.0.jpg",
      price: 200,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Hot Chocolate", price: 20),
        Addon(name: "Powder", price: 30),
        Addon(name: "Cheese", price: 15),
      ],
    ),
    Food(
      name: "Sweet Desserts",
      description: "Pastries that can melt your mouth",
      imagePath: "lib/images/desserts/dessert5.0.jpg",
      price: 200,
      category: FoodCategory.Desserts,
      availableAddons: [
        Addon(name: "Hot Chocolate", price: 20),
        Addon(name: "Powder", price: 30),
        Addon(name: "Cheese", price: 15),
      ],
    ),
    // salad
    Food(
      name: "Moctails",
      description: "Refreshing drink that open ups mind",
      imagePath: "lib/images/drinks/drink1.0.jpg",
      price: 200,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Lemon Juice", price: 20),
      ],
    ),
    Food(
      name: "Moctails",
      description: "Refreshing drink that open ups mind",
      imagePath: "lib/images/drinks/drink2.0.jpg",
      price: 200,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Lemon Juice", price: 20),
      ],
    ),
    Food(
      name: "Moctails",
      description: "Refreshing drink that open ups mind",
      imagePath: "lib/images/drinks/drink3.0.jpg",
      price: 200,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Lemon Juice", price: 20),
      ],
    ),
    Food(
      name: "Moctails",
      description: "Refreshing drink that open ups mind",
      imagePath: "lib/images/drinks/drink4.0.jpg",
      price: 200,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Lemon Juice", price: 20),
      ],
    ),
    Food(
      name: "Moctails",
      description: "Refreshing drink that open ups mind",
      imagePath: "lib/images/drinks/drink5.0.jpg",
      price: 200,
      category: FoodCategory.Drinks,
      availableAddons: [
        Addon(name: "Lemon Juice", price: 20),
      ],
    ),

    // salads
    Food(
      name: "Salads",
      description: "Salad For Health",
      imagePath: "lib/images/salads/salad1.0.jpg",
      price: 200,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Salt", price: 20),
      ],
    ),
    Food(
      name: "Salads",
      description: "Salad For Health",
      imagePath: "lib/images/salads/salad2.0.jpg",
      price: 200,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Salt", price: 20),
      ],
    ),
    Food(
      name: "Salads",
      description: "Salad For Health",
      imagePath: "lib/images/salads/salad3.0.jpg",
      price: 200,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Salt", price: 20),
      ],
    ),
    Food(
      name: "Salads",
      description: "Salad For Health",
      imagePath: "lib/images/salads/salad4.0.jpg",
      price: 200,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Salt", price: 20),
      ],
    ),

    Food(
      name: "Salads",
      description: "Salad For Health",
      imagePath: "lib/images/salads/salad5.0.jpg",
      price: 200,
      category: FoodCategory.Salads,
      availableAddons: [
        Addon(name: "Salt", price: 20),
      ],
    ),
  ];

// user cart
  final List<CartItem> _cart = [];

  // delivery address (which user can change/update)
  String _deliveryAddress = 'Lucknow';
/*

GETTERS

*/
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;
/*
OPERATIONS
*/

// add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantitty
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

// remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

// get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

// get total number  of items in the cart
  int getTotalItemsCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

// clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String address) {
    _deliveryAddress = address;
    notifyListeners();
  }

/*

HELPERS

*/

// generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's Your Receipt.");

    // format date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------------------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} * ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------------------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemsCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

// format double value of money
  String _formatPrice(double price) {
    return "\₹${price.toStringAsFixed(2)}";
  }
// format list of addons into a string summary

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatPrice(addon.price)})")
        .join(", ");
  }
}
