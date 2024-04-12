import 'package:dtu_hackathon/Core/Models/user_info.dart';
import 'package:flutter/material.dart';

class UserInfoProvider extends ChangeNotifier {
  late UserInfo userInfo;

  void initialize() {
    // Fetch userInfo here
    userInfo = UserInfo(
      id: "abcd",
      firstName: "Chiggy",
      lastName: "",
      gems: 1000,
      lives: 5,
    );

    notifyListeners();
  }

  UserInfo get getUserInfo => userInfo;
}
