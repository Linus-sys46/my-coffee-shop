import 'package:brewvana/screens/product.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final Function(Product) onAddToCart;

  const ProductItem({
    Key? key,
    required this.product,
    required this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'http://www.nattiee.com/coffee/images/${product.image}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 4),
            Text(
              product.name,
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 4),
            Text(
              '\$${product.price}',
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            ElevatedButton(
              onPressed: () => onAddToCart(product),
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
