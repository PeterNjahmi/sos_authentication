import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_xi/Login_screen.dart';
import 'package:flutter_application_xi/registration_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration and Login Screen',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: RegistrationScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
