import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  final String? error;

  const ErrorPage({super.key, this.error});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Error')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(error ?? 'Something went wrong!', style: const TextStyle(color: Colors.red, fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/'); // Navigate back to the home page
              },
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}
