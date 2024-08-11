import 'package:flutter/material.dart';

class PatientRecordScreen extends StatelessWidget {
  final List<Map<String, String>> _dummyPatients = [
    {
      'name': 'John Doe',
      'age': '45',
      'gender': 'Male',
      'condition': 'Hypertension',
      'lastVisit': '2024-08-01'
    },
    {
      'name': 'Jane Smith',
      'age': '34',
      'gender': 'Female',
      'condition': 'Diabetes',
      'lastVisit': '2024-07-25'
    },
    {
      'name': 'Samuel Brown',
      'age': '29',
      'gender': 'Male',
      'condition': 'Asthma',
      'lastVisit': '2024-08-05'
    },
    {
      'name': 'Emily White',
      'age': '52',
      'gender': 'Female',
      'condition': 'Cardiac Arrhythmia',
      'lastVisit': '2024-08-02'
    },
    {
      'name': 'Michael Green',
      'age': '63',
      'gender': 'Male',
      'condition': 'Chronic Kidney Disease',
      'lastVisit': '2024-08-08'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Records'),
      ),
      body: ListView.builder(
        itemCount: _dummyPatients.length,
        itemBuilder: (context, index) {
          final patient = _dummyPatients[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.all(10.0),
            child: ListTile(
              title: Text(patient['name'] ?? ''),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Age: ${patient['age']}'),
                  Text('Gender: ${patient['gender']}'),
                  Text('Condition: ${patient['condition']}'),
                  Text('Last Visit: ${patient['lastVisit']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
