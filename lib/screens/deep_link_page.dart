import 'package:flutter/material.dart';

class DeepLinkPage extends StatelessWidget {
  const DeepLinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Deep Link Test")),
      body: const Center(
        child: Text("Navigated here via a deep link."),
      ),
    );
  }
}
