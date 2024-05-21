import 'package:flutter/material.dart';
import 'package:flutter_comp_go_router/screens/details_page.dart';
import 'package:flutter_comp_go_router/screens/profile_page.dart';
import 'package:flutter_comp_go_router/screens/sample_page.dart';
import 'package:flutter_comp_go_router/screens/users_page.dart';
import 'package:go_router/go_router.dart';
import 'screens/home_page.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/sample',
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomePage(),
      ),
      GoRoute(path: '/sample',
        builder: (BuildContext context, GoRouterState state) => const SamplePage(),),

      GoRoute(
          path: '/details/:itemId',
          builder: (BuildContext context, GoRouterState state) {
            final params = state.pathParameters['itemId'];
            final int itemId = int.tryParse(params ?? '') ?? 0;
            return DetailsPage(itemId: itemId);
          }),
      GoRoute(path: '/profile/:userId',
      builder: (BuildContext context, GoRouterState state){
        final params = state.pathParameters['userId'];
        // Here we are making sure that the userId is an integer for Type Safety
        final int userId = int.tryParse(params ?? '') ?? 0;
        return ProfilePage(userId: userId);
      }),
      // Pay Attention to this route as it has a query parameter and the filter is passed to the UsersScreen
      GoRoute(path: '/users',
      builder: (BuildContext context, GoRouterState state){
        final String? filter = state.uri.queryParameters['filter'];
        return UsersScreen(filter: filter);
      }),
    ],
  );
}
