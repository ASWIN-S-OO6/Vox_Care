import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RegularCheckupScreen extends StatelessWidget {
  final List<Map<String, String>> _dummyCheckups = [
    {
      'patientName': 'John Doe',
      'checkupDate': '2024-08-15',
      'doctor': 'Dr. Smith',
      'department': 'Cardiology'
    },
    {
      'patientName': 'Jane Smith',
      'checkupDate': '2024-08-16',
      'doctor': 'Dr. Johnson',
      'department': 'Endocrinology'
    },
    {
      'patientName': 'Samuel Brown',
      'checkupDate': '2024-08-17',
      'doctor': 'Dr. Lee',
      'department': 'Pulmonology'
    },
    {
      'patientName': 'Emily White',
      'checkupDate': '2024-08-18',
      'doctor': 'Dr. Clark',
      'department': 'Cardiology'
    },
    {
      'patientName': 'Michael Green',
      'checkupDate': '2024-08-19',
      'doctor': 'Dr. Lewis',
      'department': 'Nephrology'
    },
  ];

  // Method to remove non-numeric characters from phone number
  String _formatPhoneNumber(String phoneNumber) {
    return phoneNumber.replaceAll(RegExp(r'[^\d]'), ''); // Removes all non-numeric characters
  }

  Future<void> _makeVideoCall(String phoneNumber) async {
    final formattedPhoneNumber = _formatPhoneNumber(phoneNumber);
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: formattedPhoneNumber,
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
        title: Text('Regular Checkups'),
      ),
      body: ListView.builder(
        itemCount: _dummyCheckups.length,
        itemBuilder: (context, index) {
          final checkup = _dummyCheckups[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(checkup['patientName'] ?? ''),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Checkup Date: ${checkup['checkupDate']}'),
                  Text('Doctor: ${checkup['doctor']}'),
                  Text('Department: ${checkup['department']}'),
                ],
              ),
              trailing: IconButton(
                icon: Icon(Icons.video_call),
                onPressed: () => _makeVideoCall('9500563743'), // Use a sample phone number with formatting
              ),
            ),
          );
        },
      ),
    );
  }
}
