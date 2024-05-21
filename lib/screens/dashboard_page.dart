import 'package:flutter/material.dart';
import 'package:flutter_comp_go_router/screens/tab_screens.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
              Tab(icon: Icon(Icons.account_circle), text: "Profile"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeTabScreen(),
            SettingsTabScreen(),
            ProfileTabScreen(),
          ],
        ),
      ),
    );
  }
}
