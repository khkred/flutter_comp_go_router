import 'package:flutter/material.dart';
import 'app_router.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  runApp(const MyApp());
  usePathUrlStrategy();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router Example',
      routerConfig: AppRouter.router,
    );
  }
}

