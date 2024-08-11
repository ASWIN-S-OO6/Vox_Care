import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'attending_patients_screen.dart';
import 'patient_record_screen.dart';
import 'regular_checkup_screen.dart';
import 'sos_alert_screen.dart';

class DoctorHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Operations'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          )
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          _buildGridItem(context, 'Attending Patients Schedule', Icons.schedule, AttendingPatientsScreen()),
          _buildGridItem(context, 'Patient Record', Icons.folder_shared, PatientRecordScreen()),
          _buildGridItem(context, 'Regular Checkup', Icons.check_circle, RegularCheckupScreen()),
          _buildGridItem(context, 'SOS Alert Call', Icons.warning, SosAlertScreen()),
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
