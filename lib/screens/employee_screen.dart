import 'package:fire_base/services/employee_services.dart';
import 'package:flutter/material.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Data'),
        actions: [
          IconButton(
              onPressed: () => {EmployeeServices().getData()},
              icon: const Icon(Icons.refresh_rounded))
        ],
      ),
    );
  }
}
