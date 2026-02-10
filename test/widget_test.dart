import 'package:flutter/material.dart';

void main() => runApp(const SnackBarApp());

class SnackBarApp extends StatelessWidget {
  const SnackBarApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Inbox')),
        body: const Center(child: SnackBarDemo()),
      ),
    );
  }
}

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  void _showSnackBar(BuildContext context) {
    // We will add properties here in the next step
    final snackBar = SnackBar(content: const Text('Message deleted'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _showSnackBar(context),
      child: const Text('Delete Message'),
    );
  }
}
