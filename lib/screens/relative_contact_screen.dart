import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactRelativeScreen extends StatelessWidget {
  final List<Map<String, String>> _dummyContacts = [
    {
      'relativeName': 'Aswin S',
      'relationship': 'Friend',
      'phone': '6380088036',
      'email': 'aswin.s200506@gmail.com'
    },
    {
      'relativeName': 'Bob Smith',
      'relationship': 'Brother',
      'phone': '+1-555-5678',
      'email': 'bob.smith@example.com'
    },
    {
      'relativeName': 'Carol Brown',
      'relationship': 'Sister',
      'phone': '+1-555-8765',
      'email': 'carol.brown@example.com'
    },
    {
      'relativeName': 'David White',
      'relationship': 'Father',
      'phone': '+1-555-4321',
      'email': 'david.white@example.com'
    },
    {
      'relativeName': 'Eve Green',
      'relationship': 'Mother',
      'phone': '+1-555-9876',
      'email': 'eve.green@example.com'
    },
  ];

  Future<void> _makeCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    try {
      await launchUrl(launchUri);
    } catch (e) {
      print('Could not launch $launchUri: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Relatives'),
      ),
      body: ListView.builder(
        itemCount: _dummyContacts.length,
        itemBuilder: (context, index) {
          final contact = _dummyContacts[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(contact['relativeName'] ?? ''),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Relationship: ${contact['relationship']}'),
                  Text('Phone: ${contact['phone']}'),
                  Text('Email: ${contact['email']}'),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.call),
                onPressed: () => _makeCall(contact['phone'] ?? ''),
              ),
            ),
          );
        },
      ),
    );
  }
}
