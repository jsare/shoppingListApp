import 'package:flutter/material.dart';
import '../data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceryItems.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(groceryItems[index].name),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            width: 24,
            height: 24,
            color: groceryItems[index].category.color,
          ),
        ),
        trailing: Text(
          groceryItems[index].quantity.toString(),
        ),
      ),
    );
  }
}
