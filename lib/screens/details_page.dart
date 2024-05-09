import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final int itemId;

  // Ensuring type safety with required parameters
  const DetailsPage({super.key, required this.itemId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Page')),
      body: Center(
        child: Text('Displaying details for item ID: $itemId',
            style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}
