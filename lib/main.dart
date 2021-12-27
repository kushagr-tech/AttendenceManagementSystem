import 'package:attendence_management_system/pages/changePasswordPage.dart';
import 'package:attendence_management_system/pages/editProfilePage.dart';
import 'package:attendence_management_system/pages/profilepage.dart';
import 'package:attendence_management_system/theme/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
   // canvasColor: primaryColor,
           primarySwatch: primaryColor,
           dividerColor: Colors.black
    );
    // DE0000
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendence Management System',
      theme: themeData,
      home: 
      ChangePassword(),
      //ProfilePage(),
      //EditProfilePage(),
    );
  }
}

// to do 
// link edit profile to profile page
// bottom nav bar 
// Change pass page mai display karna hai pass