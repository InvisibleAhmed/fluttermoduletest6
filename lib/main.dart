/*KAZI SHAHED AHMED
* MODULE-6: LIVE TEST
* */
import 'package:flutter/material.dart';

void main() {
  runApp(MyShoppingListApp());
}

class MyShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Shopping List"),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                // Add cart functionality here
              },
            ),
          ],
        ),
        body: ShoppingList(),
      ),
    );
  }
}

class ShoppingList extends StatelessWidget {
  final List<ShoppingItem> shoppingItems = [
    ShoppingItem("Watch", Icons.watch),
    ShoppingItem("Sunglasses", Icons.accessibility),
    ShoppingItem("Laptop", Icons.laptop),
    ShoppingItem("Headphones", Icons.headset),
    ShoppingItem("Mobile", Icons.mobile_screen_share),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shoppingItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(shoppingItems[index].icon),
          title: Text(shoppingItems[index].name),
          onTap: () {
            // Add item click functionality here
          },
        );
      },
    );
  }
}

class ShoppingItem {
  final String name;
  final IconData icon;

  ShoppingItem(this.name, this.icon);
}
