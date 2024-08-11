import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import the LoginScreen

import 'relative_contact_screen.dart';
import 'sos_screen.dart';
import 'doctor_consultation_screen.dart';
import 'caretaker_notify_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Management'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Navigate back to the login screen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildGridItem(context, 'Contact Relative', Icons.contacts, ContactRelativeScreen()),
          _buildGridItem(context, 'SOS', Icons.warning, SosScreen()),
          _buildGridItem(context, 'Consult Doctor', Icons.local_hospital, DoctorConsultationScreen()),
          _buildGridItem(context, 'Notify Caretaker', Icons.notification_important, CaretakerNotifyScreen()),
        ],
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String title, IconData icon, Widget screen) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screen),
      ),
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.blue),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
