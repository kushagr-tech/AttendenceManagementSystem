import 'package:attendence_management_system/pages/profilepages/adminPage.dart';
import 'package:attendence_management_system/pages/editpages/changePasswordPage.dart';
import 'package:path/path.dart';

import 'package:attendence_management_system/model/userDetailModel.dart';
import 'package:attendence_management_system/pages/bottomNavBar.dart';
import 'package:attendence_management_system/pages/editpages/editProfilePage.dart';
import 'package:attendence_management_system/widgets/editbuttonWidget.dart';
import 'package:attendence_management_system/widgets/profilePhotoWidget.dart';
import 'package:attendence_management_system/theme/colors.dart';
import 'package:attendence_management_system/utils/userPrefrences.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    int currentindex = 0;
    getGroup(context);
    final user = UserPrefrences.myUser;

    return Scaffold(
      appBar: AppBar(
        title: Text("Faculty Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Center(
              child: Image.asset('assets/Logo_Login_Page.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            ProfileWidget(
              imagePath: user.imagePath,
              size: 224,
            ),
            const SizedBox(
              height: 15,
            ),
            buildName(user),
            const SizedBox(
              height: 15,
            ),
            Center(child: buildEditButton(user, context)),
            const SizedBox(
              height: 15,
            ),
            Center(child: buildChangePassButton(user, context)),
            const SizedBox(
              height: 24,
            ),
            Center(child: buildSwitchToAdminButton(user, context)),
          ],
        ),
      ),
      // bottomNavigationBar: BuildFacultyBottomNavBar(currentindex),
      //     BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: primaryColor,
      //   currentIndex: currentindex,
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.white70,
      //   onTap: (index) => setState(() => currentindex = index),
      //   items: [
      //     BottomNavigationBarItem(
      //       // icon: Icon(Icons.support_agent),
      //       icon: Icon(Icons.assignment_outlined),
      //       label: 'Attendence',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.description_outlined),
      //       label: 'Report',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle_outlined),
      //       label: 'Profile',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.logout),
      //       label: 'Log Out',
      //     ),
      //   ],
      // ),
    );
  }

  void getGroup(BuildContext context) {}
}

Widget buildName(Faculty user) => Column(
      children: [
        Text(
          user.facultyName,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          user.email,
          style: TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
Widget buildEditButton(Faculty user, BuildContext context) => ButtonWidget(
      text: 'Edit Profile',
      icon: Icons.person,
      onClicked: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => EditProfilePage()),
        )
      },
    );
Widget buildChangePassButton(Faculty user, BuildContext context) => ButtonWidget(
      text: 'Change Password',
      icon: Icons.lock,
      onClicked: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ChangePassword()),
        )
      },
    );
Widget buildSwitchToAdminButton(Faculty user, BuildContext context) =>
    ButtonWidget(
      text: 'Switch to Admin',
      icon: Icons.switch_account,
      onClicked: () => {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => AdminNavScreen()),
        )
      },
    );
