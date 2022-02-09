import 'package:attendence_management_system/model/userDetailModel.dart';
import 'package:attendence_management_system/pages/bottomNavBar.dart';
import 'package:attendence_management_system/widgets/editbuttonWidget.dart';
import 'package:attendence_management_system/pages/detailspages/facultyDetailpage.dart';
import 'package:attendence_management_system/pages/detailspages/facultyScreen.dart';
import 'package:attendence_management_system/widgets/profilePhotoWidget.dart';
import 'package:attendence_management_system/pages/profilepages/profilepage.dart';
import 'package:attendence_management_system/pages/detailspages/studentDetailspage.dart';
import 'package:attendence_management_system/theme/colors.dart';
import 'package:attendence_management_system/utils/userPrefrences.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    final user = UserPrefrences.myUser;

    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
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
              height: 24,
            ),
            buildName(user),
            const SizedBox(
              height: 15,
            ),
            Center(child: buildSwitchToFacultyButton(user, context)),
            const SizedBox(
              height: 15,
            ),
            Center(child: buildStudentDetailsButton(user, context)),
            const SizedBox(
              height: 15,
            ),
            Center(child: buildFacultyDetailsButton(user, context)),
            const SizedBox(
              height: 24,
            ),

            // Container(
            //   color: Colors.grey[400],
            //   child:
            //    Padding(
            //     padding: const EdgeInsets.all(10.0),
            //           child: DropdownButton<String>(
            //             isExpanded: true,
            //             value: dropdownValue,
            //             icon: const Icon(Icons.keyboard_arrow_down_outlined),
            //             elevation: 16,
            //             style: const TextStyle(color: Colors.black),
            //             // underline: Container(
            //             //     height: 2,
            //             // color: Colors.black),
            //             onChanged: (String? newValue) {
            //               setState(() {
            //                 dropdownValue = newValue!;
            //               });
            //             },
            //             items: <String>['One', 'Two', 'Free', 'Four']
            //                 .map<DropdownMenuItem<String>>((String value) {
            //               return DropdownMenuItem<String>(
            //                 value: value,
            //                 child: Text(value),
            //               );
            //             }).toList(),
            //           ),
            //   ),
            // ),
// DropdownButton<String>(
//   items: <String>['A', 'B', 'C', 'D'].map((String value) {
//     return DropdownMenuItem<String>(
//       value: value,
//       child: Text(value),
//     );
//   }).toList(),
//   onChanged: (_) {},
// )
          ],
        ),
      ),
      // bottomNavigationBar: BuildAdminBottomNavBar(currentindex),
    );
  }
}

Widget buildSwitchToFacultyButton(Faculty user, BuildContext context) =>
    ButtonWidget(
      text: 'Switch To Faculty',
      icon: Icons.switch_account,
      onClicked: () => {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginNavScreen()),
        )
      },
    );
Widget buildStudentDetailsButton(Faculty user, BuildContext context) =>
    ButtonWidget(
      text: 'Student Details',
      icon: Icons.list_rounded,
      onClicked: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => StudentDetailsPage()),
        )
      },
    );
Widget buildFacultyDetailsButton(Faculty user, BuildContext context) =>
    ButtonWidget(
      text: 'Faculty Details',
      icon: Icons.list_rounded,
      onClicked: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => FacultyDetailsPage()),
        )
      },
    );
