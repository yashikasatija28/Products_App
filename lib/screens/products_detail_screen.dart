import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    if (product == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Product Detail'),
        ),
        body: Center(child: Text('Product not found')),
      );
    }

    final productName = product['name'] ?? 'Unknown';
    final productPrice = product['price'] ?? 0;
    final productDescription =
        product['description'] ?? 'No description available';

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(productName,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('\$${productPrice.toString()}',
                style: TextStyle(fontSize: 20, color: Colors.green)),
            SizedBox(height: 10),
            Text(productDescription),
          ],
        ),
      ),
    );
  }
}
