import 'dart:ui';

import 'package:attendence_management_system/pages/loginpages/loginPage.dart';
import 'package:flutter/material.dart';

class Logout extends StatefulWidget {
  const Logout({ Key? key }) : super(key: key);

  @override
  _LogoutState createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Logout"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text("Confirm Logout ?", style: TextStyle(fontSize: 30),),
            SizedBox(height: 30,),
            ElevatedButton(onPressed:()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> LoginPage())), child: Text("Logout",style: TextStyle(fontSize: 20),),
                          style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15),
                            ),
                            fixedSize: Size(200, 50),
                          ),)
          ],
        ),
      ),
      );
      
  }
}