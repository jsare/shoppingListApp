import 'package:flutter/material.dart';

import '../widgets/grocery_list.dart';
import '../widgets/new_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _addItem() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const NewItem()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add_outlined),
          ),
        ],
      ),
      body: const GroceryList(),
    );
  }
}
