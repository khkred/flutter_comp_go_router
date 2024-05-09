import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/home_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const HomePage(),
      ),
    ],
  );
}
