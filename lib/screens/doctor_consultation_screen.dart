import 'package:flutter/material.dart';

class DoctorConsultationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consult Doctor'),
      ),
      body: Center(
        child: Text('Book a consultation with your doctor.'),
      ),
    );
  }
}
