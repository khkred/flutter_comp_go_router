import 'package:flutter/material.dart';
import 'package:flutter_comp_go_router/screens/dashboard_page.dart';
import 'package:flutter_comp_go_router/screens/details_page.dart';
import 'package:flutter_comp_go_router/screens/login_page.dart';
import 'package:flutter_comp_go_router/screens/profile_page.dart';
import 'package:flutter_comp_go_router/screens/tab_screens.dart';
import 'package:flutter_comp_go_router/screens/users_page.dart';
import 'package:go_router/go_router.dart';
import 'global/global.dart';
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

      GoRoute(
          path: '/profile/:userId',
          builder: (BuildContext context, GoRouterState state) {
            final params = state.pathParameters['userId'];
            // Here we are making sure that the userId is an integer for Type Safety
            final int userId = int.tryParse(params ?? '') ?? 0;
            return ProfilePage(userId: userId);
          }),

      // Pay Attention to this route as it has a query parameter and the filter is passed to the UsersScreen
      GoRoute(
          path: '/users',
          builder: (BuildContext context, GoRouterState state) {
            final String? filter = state.uri.queryParameters['filter'];
            return UsersScreen(filter: filter);
          }),

      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) =>
            const LoginPage(),
      ),

      GoRoute(
          path: '/dashboard',
          builder: (BuildContext context, GoRouterState state) =>
              const DashboardPage(),
          redirect: (BuildContext context, GoRouterState state) {
            if (!isLoggedIn) {
              return '/login'; // Redirect to login if not authenticated
            }
            return null; // No redirection if authenticated
          },
          routes: [
            GoRoute(
              path: 'home',
              builder: (BuildContext context, GoRouterState state) =>
                  const HomeTabScreen(),
            ),
            GoRoute(
              path: 'settings',
              builder: (BuildContext context, GoRouterState state) =>
                  const SettingsTabScreen(),
            ),
            GoRoute(
              path: 'profile',
              builder: (BuildContext context, GoRouterState state) =>
                  const ProfileTabScreen(),
            ),
          ]),
    ],
  );
}
