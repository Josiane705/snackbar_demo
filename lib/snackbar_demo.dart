import 'package:flutter/material.dart';

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  // This function builds and displays the SnackBar
  void _showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('Message deleted successfully!'),

      // PROPERTY 1: backgroundColor - Changes the fill color of the bar
      backgroundColor: Colors.redAccent,

      // PROPERTY 2: behavior - Changes placement (fixed vs floating)
      behavior: SnackBarBehavior.floating,

      // PROPERTY 3: action - Adds a clickable button for user interaction
      action: SnackBarAction(
        label: 'UNDO',
        textColor: Colors.white,
        onPressed: () {
          debugPrint('Undo action triggered');
        },
      ),
    );

    // Displays the snackbar using the ScaffoldMessenger
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueGrey,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      onPressed: () => _showSnackBar(context),
      child: const Text(
        'Delete Message',
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
