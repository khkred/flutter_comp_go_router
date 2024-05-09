import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _detailsPageIdController = TextEditingController();

  @override
  void dispose() {
    _detailsPageIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'),),
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _detailsPageIdController,
              keyboardType: TextInputType.number,  // Set the keyboard type to numeric
              decoration: InputDecoration(
                hintText: 'Enter an item ID',
                border: const OutlineInputBorder(),
                suffixIcon: _detailsPageIdController.text.isNotEmpty ? IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: _navigateToDetails,
                ) : null,
              ),
              onChanged: (value) {
                // Call setState to rebuild the widget with the new button
                setState(() {});
              },
            ),)
          ],
        ),
      ),
    );
  }

  void _navigateToDetails() {
    if (_detailsPageIdController.text.isNotEmpty) {
      final itemId = int.tryParse(_detailsPageIdController.text);
      if (itemId != null) {
        //We are going to the details page with the item ID
        context.push('/details/$itemId');
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

}
