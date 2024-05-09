import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final int userId;

  // Ensuring type safety with required integer parameter
  const ProfilePage({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page')),
      body: Center(
        child: Text('Profile for user ID: $userId'),
      ),
    );
  }
}
