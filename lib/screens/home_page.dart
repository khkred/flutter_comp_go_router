import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _detailsPageIdController =
      TextEditingController();
  final TextEditingController _usersPageFilterController =
      TextEditingController();

  @override
  void dispose() {
    _detailsPageIdController.dispose();
    _usersPageFilterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _detailsPageIdController,
              keyboardType: TextInputType.number,
              // Set the keyboard type to numeric
              decoration: InputDecoration(
                hintText: 'Enter an item ID for details page',
                border: const OutlineInputBorder(),
                suffixIcon: _detailsPageIdController.text.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.arrow_forward),
                        onPressed: _navigateToDetails,
                      )
                    : null,
              ),
              onChanged: (value) {
                // Call setState to rebuild the widget with the new button
                setState(() {});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _usersPageFilterController,
              decoration: InputDecoration(
                hintText: 'Add a filter',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: _navigateToUsers,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                context.go('/dashboard');
              },
              child: const Text('Go to Dashboard'),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToDetails() {
    if (_detailsPageIdController.text.isNotEmpty) {
      final itemId = int.tryParse(_detailsPageIdController.text);
      if (itemId != null) {
        //We are going to the details page with the item ID
        //context.push('/details/$itemId');
        context.pushNamed(
          'details',
          pathParameters: {'itemId': '$itemId'},
        );
      } else {
        // Error handling for non-numeric input
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Error'),
            content: const Text('Please enter a valid number.'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    }
  }

  void _navigateToUsers() {
    final filter = _usersPageFilterController.text;
    if (filter.isNotEmpty) {
      //context.push('/users?filter=$filter');
      context.pushNamed(
        'users',
        queryParameters: {'filter': filter},
      );
    } else {
      context.push('/users');
    }
  }
}
