import 'dart:io';
import 'package:fire_base/screens/employee_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb || Platform.isAndroid) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCbZlUuQZwczxb1q8osCXXycpHt9jrtwFg",
            authDomain: "compound-b1b69.firebaseapp.com",
            projectId: "compound-b1b69",
            storageBucket: "compound-b1b69.appspot.com",
            messagingSenderId: "412971709342",
            appId: "1:412971709342:web:f31daaec5eef3a1ff4dc8f",
            measurementId: "G-4XB9S6BSVL"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      home: EmployeeScreen(),
    );
  }
}
