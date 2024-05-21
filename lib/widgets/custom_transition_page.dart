import 'package:flutter/material.dart';

class CustomTransitionPage extends Page {
  final Widget child;
  final Duration transitionDuration;
  final RouteTransitionsBuilder transitionsBuilder;

  CustomTransitionPage({
    required this.child,
    this.transitionDuration = const Duration(milliseconds: 1200),
    required this.transitionsBuilder,
  }) : super(key: ValueKey(child));

  @override
  Route createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionDuration: transitionDuration,
      transitionsBuilder: transitionsBuilder,
    );
  }
}
