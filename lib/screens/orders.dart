import 'package:brewvana/screens/product.dart';
import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  final List<Product> orderedItems;

  OrdersPage({required this.orderedItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFFFA000),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Orders'),
          ),
        ),
      ),
      body: orderedItems.isEmpty
          ? Center(
              child: Text('No orders placed yet.'),
            )
          : ListView.builder(
              itemCount: orderedItems.length,
              itemBuilder: (context, index) {
                final product = orderedItems[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text('\$${product.price.toString()}'),
                );
              },
            ),
    );
  }
}
