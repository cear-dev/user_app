import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'create_profile_screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(UserApp());
}

class UserApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/create-profile': (context) => CreateProfileScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
