import 'package:attendence_management_system/widgets/appBarWidget.dart';
import 'package:attendence_management_system/widgets/textFeildWidget.dart';
import 'package:attendence_management_system/utils/userPrefrences.dart';
import 'package:flutter/material.dart';

import '../bottomNavBar.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    final user = UserPrefrences.myUser;
//
// TextField(
                      //   obscureText: _isObscure,
                      //   decoration: InputDecoration(
                      //     border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(15)),
                      //     labelText: 'Password',
                      //     hintText: 'Password',
                      //     suffixIcon: IconButton(
                      //       icon: Icon(_isObscure
                      //           ? Icons.visibility_off_sharp
                      //           : Icons.visibility_sharp),
                      //       onPressed: () {
                      //         setState(() {
                      //           _isObscure = !_isObscure;
                      //         });
                      //       },
                      //     ),
                      //   ),
                      // ),
//
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
            child: ElevatedButton(
              
              onPressed: () =>{Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginNavScreen()),
      
               (route)=>false, ),
                }, child: 
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
