import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sample Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is the sample page, we got from initial Location'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/'); // This will navigate to the home page
              },
              child: const Text('Go to Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
