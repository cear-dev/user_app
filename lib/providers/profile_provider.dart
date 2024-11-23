import 'package:flutter/material.dart';
import '../models/user_profile.dart';

class ProfileProvider with ChangeNotifier {
  UserProfile? _profile;

  UserProfile? get profile => _profile;

  void createProfile(String name, int age, String occupation) {
    _profile = UserProfile(name: name, age: age, occupation: occupation);
    notifyListeners();
  }

  void resetProfile() {
    _profile = null;
    notifyListeners();
  }
}
