import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Please log in to continue'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //Simulate a login by setting a logged in flag
                context.go('/dashboard');
              },
              child: const Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
