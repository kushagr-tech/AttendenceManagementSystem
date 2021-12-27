import 'package:attendence_management_system/pages/appBarWidget.dart';
import 'package:attendence_management_system/pages/textFeildWidget.dart';
import 'package:attendence_management_system/utils/userPrefrences.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    final user = UserPrefrences.myUser;

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('Change Password'),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 30,
          ),
          TextFieldWidget(
            label: "Current Password",
            text: "", //Change it to password
            onChanged: (pass) {},
          ),
          const SizedBox(
            height: 30,
          ),
          TextFieldWidget(
            label: "New Password",
            text: "", //Change it to password
            onChanged: (pass) {},
          ),
          const SizedBox(
            height: 30,
          ),
          TextFieldWidget(
            label: "Confirm Password",
            text: "", //Change it to password
            onChanged: (pass) {},
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(onPressed: () =>{}, child: 
              Text("Confirm"),
               style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0)
            ),
      fixedSize: Size(300, 60), 
               )
            ),
          ),
        ],
      ),
    );
  }
}
