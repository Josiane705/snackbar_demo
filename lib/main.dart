import 'package:flutter/material.dart';

void main() => runApp(const SnackBarApp());

class SnackBarApp extends StatelessWidget {
  const SnackBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Demo'),
          backgroundColor: Colors.blueGrey,
        ),
        body: const Center(child: SnackBarDemo()),
      ),
    );
  }
}

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  // LINE 26: This is where the _showSnackBar function starts
  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('Message deleted successfully!'),

      // ATTRIBUTE 1: backgroundColor
      backgroundColor: Colors.redAccent,

      // ATTRIBUTE 2: behavior
      behavior: SnackBarBehavior.floating,

      // ATTRIBUTE 3: action
      action: SnackBarAction(
        label: 'UNDO',
        textColor: Colors.white,
        onPressed: () {
          // Logic for undoing the action
          debugPrint('Undo action triggered');
        },
      ),
    );

    // This line tells Flutter to show the SnackBar we just created
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
      // LINE 58: This is where we call the function
      onPressed: () => _showSnackBar(context),
      child: const Text(
        'Delete Message',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
