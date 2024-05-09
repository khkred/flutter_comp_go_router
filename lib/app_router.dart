import 'package:flutter/material.dart';
import 'package:flutter_comp_go_router/screens/details_page.dart';
import 'package:go_router/go_router.dart';
import 'screens/home_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
      ),

      GoRoute(
          path: '/details/:itemId',
          builder: (BuildContext context, GoRouterState state) {
            final params = state.pathParameters['itemId'];
            final int itemId = int.tryParse(params ?? '') ?? 0;
            return DetailsPage(itemId: itemId);
          }),
    ],
  );
}
