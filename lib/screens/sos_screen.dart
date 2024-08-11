import 'package:flutter/material.dart';

class SosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SOS'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Implement SOS functionality here
          },
          child: Text('Send SOS Alert'),
        ),
      ),
    );
  }
}
