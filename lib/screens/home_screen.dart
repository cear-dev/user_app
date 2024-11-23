import 'package:flutter/material.dart';
import '../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.homeTitle),
        backgroundColor: AppConstants.primaryColor,
        centerTitle: true,
      ),
      body: Container(
        color: AppConstants.backgroundColor,
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppConstants.primaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, AppConstants.routeCreateProfile);
            },
            child: const Text(
              AppConstants.buttonCreateProfile,
              style: AppConstants.buttonTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
