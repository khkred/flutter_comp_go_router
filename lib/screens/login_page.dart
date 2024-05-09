import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Please log in to continue'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Placeholder for authentication logic
                // context.go('/dashboard');
              },
              child: const Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
