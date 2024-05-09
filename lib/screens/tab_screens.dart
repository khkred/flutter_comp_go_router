import 'package:flutter/material.dart';

// HomeTabScreen with a unique background color
class HomeTabScreen extends StatelessWidget {
  const HomeTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100], // Light blue background
      child: const Center(child: Text('Home Tab Content')),
    );
  }
}

// SettingsTabScreen with a unique background color
class SettingsTabScreen extends StatelessWidget {
  const SettingsTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[100], // Light green background
      child: const Center(child: Text('Settings Tab Content')),
    );
  }
}

// ProfileTabScreen with a unique background color
class ProfileTabScreen extends StatelessWidget {
  const ProfileTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[100], // Light purple background
      child: const Center(child: Text('Profile Tab Content')),
    );
  }
}
