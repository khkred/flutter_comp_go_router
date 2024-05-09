import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final int userId;

  // Ensuring type safety with required parameters
  const ProfilePage({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: Center(
        child: Text('Displaying profile for user ID: $userId'),
      ),
    );
  }
}
