import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  final String? filter;

  const UsersScreen({super.key, this.filter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users Screen')),
      body: Center(
        // Displaying the filter if it exists
        child: Text(filter != null ? 'Filtering by: $filter' : 'No filter applied'),
      ),
    );
  }
}
