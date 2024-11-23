import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/profile_provider.dart';
import '../constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profile = Provider.of<ProfileProvider>(context).profile;

    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.profileTitle),
        backgroundColor: AppConstants.primaryColor,
      ),
      body: Container(
        color: AppConstants.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: profile == null
              ? const Center(
                  child: Text(
                    AppConstants.noProfileMessage,
                    style: AppConstants.subtitleStyle,
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nombre: ${profile.name}',
                      style: AppConstants.titleStyle,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Edad: ${profile.age}',
                      style: AppConstants.subtitleStyle,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Ocupación: ${profile.occupation}',
                      style: AppConstants.subtitleStyle,
                    ),
                    const Spacer(),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppConstants.primaryColor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          Provider.of<ProfileProvider>(context, listen: false)
                              .resetProfile();
                          Navigator.popUntil(
                              context, ModalRoute.withName(AppConstants.routeHome));
                        },
                        child: const Text(
                          AppConstants.buttonBackHome,
                          style: AppConstants.buttonTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
