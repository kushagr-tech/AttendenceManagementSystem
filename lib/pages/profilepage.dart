import 'package:path/path.dart';

import 'package:attendence_management_system/model/userProfileDetailModel.dart';
import 'package:attendence_management_system/pages/bottomNavBar.dart';
import 'package:attendence_management_system/pages/editProfilePage.dart';
import 'package:attendence_management_system/pages/editbuttonWidget.dart';
import 'package:attendence_management_system/pages/profilePhotoWidget.dart';
import 'package:attendence_management_system/theme/colors.dart';
import 'package:attendence_management_system/utils/userPrefrences.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    getGroup(context);
    final user = UserPrefrences.myUser;

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 40,
          ),
          ProfileWidget(
            imagePath: user.imagePath,
          ),
          const SizedBox(
            height: 24,
          ),
          buildName(user),
          const SizedBox(
            height: 24,
          ),
          Center(child: buildEditButton(user)),
          const SizedBox(
            height: 24,
          ),
          Center(child: buildChangePassButton(user)),
          const SizedBox(
            height: 24,
          ),
          Center(child: buildSwitchToAdminButton(user)),
        ],
      ),
      bottomNavigationBar:
          //BuildBottomNavBar(),
          BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        currentIndex: currentindex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        onTap: (index) => setState(() => currentindex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: 'Attendence',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Log Out',
          ),
        ],
      ),
    );
  }

  void getGroup(BuildContext context) {
    
  }
}

Widget buildName(User user) => Column(
      children: [
        Text(
          user.name,
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
Widget buildEditButton(User user) => ButtonWidget(
      text: 'Edit Profile',
      icon: Icons.person,
      onClicked: () => {
      //   Navigator.of(BuildContext.context)
      //       .push(MaterialPageRoute(builder: (context) => EditProfilePage()),
      //       )
     },
    );
Widget buildChangePassButton(User user) => ButtonWidget(
      text: 'Change Password',
      icon: Icons.lock,
      onClicked: () {},
    );
Widget buildSwitchToAdminButton(User user) => ButtonWidget(
      text: 'Switch to Admin',
      icon: Icons.switch_account,
      onClicked: () {},
    );
