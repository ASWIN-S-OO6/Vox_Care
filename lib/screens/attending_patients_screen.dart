import 'package:flutter/material.dart';

class AttendingPatientsScreen extends StatelessWidget {
  final List<Map<String, String>> _dummySchedules = [
    {
      'patientName': 'John Doe',
      'appointmentTime': '2024-08-15 10:00 AM',
      'doctor': 'Dr. Smith',
      'department': 'Cardiology'
    },
    {
      'patientName': 'Jane Smith',
      'appointmentTime': '2024-08-15 11:00 AM',
      'doctor': 'Dr. Johnson',
      'department': 'Endocrinology'
    },
    {
      'patientName': 'Samuel Brown',
      'appointmentTime': '2024-08-15 01:00 PM',
      'doctor': 'Dr. Lee',
      'department': 'Pulmonology'
    },
    {
      'patientName': 'Emily White',
      'appointmentTime': '2024-08-15 02:00 PM',
      'doctor': 'Dr. Clark',
      'department': 'Cardiology'
    },
    {
      'patientName': 'Michael Green',
      'appointmentTime': '2024-08-15 03:00 PM',
      'doctor': 'Dr. Lewis',
      'department': 'Nephrology'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attending Patients Schedule'),
      ),
      body: ListView.builder(
        itemCount: _dummySchedules.length,
        itemBuilder: (context, index) {
          final schedule = _dummySchedules[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(schedule['patientName'] ?? ''),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Appointment Time: ${schedule['appointmentTime']}'),
                  Text('Doctor: ${schedule['doctor']}'),
                  Text('Department: ${schedule['department']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
