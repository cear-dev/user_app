import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/profile_provider.dart';
import 'screens/home_screen.dart';
import 'screens/create_profile_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const UserApp());
}

class UserApp extends StatelessWidget {
  const UserApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProfileProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'T2 - UserApp',
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/create-profile': (context) => const CreateProfileScreen(),
          '/profile': (context) => const ProfileScreen(),
        },
      ),
    );
  }
}
