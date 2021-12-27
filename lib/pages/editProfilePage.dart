import 'package:attendence_management_system/pages/editProfilePhotoWidget.dart';
import 'package:attendence_management_system/pages/textFeildWidget.dart';
import 'package:attendence_management_system/utils/userPrefrences.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({ Key? key }) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPrefrences.myUser;

    return Scaffold(
      appBar:AppBar(
        leading: BackButton(),
        title: Text("Edit Profile"),
      ),
      // BuildAppBar(context),
      body:
       ListView(physics: BouncingScrollPhysics(),
        children: [     
           const SizedBox(height: 30,),
          EditProfileWidget(
            imagePath: user.imagePath,
            onClicked: () async{},
          ), 
           const SizedBox(height: 25,),
          TextFieldWidget(
            label: "Username",
            text: user.name,
            onChanged: (name) {},
            
          ),
           const SizedBox(height: 25,),
          TextFieldWidget(
            label: "Email",
            text: user.email,
            onChanged: (email) {},
            
          ),
           const SizedBox(height: 25,),
          TextFieldWidget(
            label: "Phone Number",
            text: user.phoneNo,
            onChanged: (phoneNo) {},
            
          ),
           const SizedBox(height: 25,),
          TextFieldWidget(
            label: "Date Of Birth",
            text: user.DOB,
            onChanged: (DOB) {},
            
          ),
          
          ],
          )
    );
  }
}
