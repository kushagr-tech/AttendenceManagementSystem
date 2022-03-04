import 'package:attendence_management_system/widgets/textfieldwidgetform.dart';
import 'package:flutter/material.dart';

import '../bottomNavBar.dart';

class EditFaculty extends StatefulWidget {
  const EditFaculty({Key? key}) : super(key: key);

  @override
  _EditFacultyState createState() => _EditFacultyState();
}

class _EditFacultyState extends State<EditFaculty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          leading: BackButton(),
          title: Text('FACULTY DETAILS')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'EDIT',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            TextFieldWidgetForm(
              label: "Full Name",
              onChanged: (yuu) {},
              text: "",
            ),
            SizedBox(
              height: 15,
            ),
            TextFieldWidgetForm(
              label: "Email",
              onChanged: (yuu) {},
              text: "",
            ),
            SizedBox(
              height: 15,
            ),
            TextFieldWidgetForm(
              label: "College ID",
              onChanged: (yuu) {},
              text: "",
            ),
            SizedBox(
              height: 15,
            ),
            TextFieldWidgetForm(
              label: "Phone",
              onChanged: (yuu) {},
              text: "",
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: TextFieldWidgetForm(
                    label: "Semester",
                    onChanged: (yuu) {},
                    text: "",
                  ),
                ),
                Flexible(
                  child: TextFieldWidgetForm(
                    label: "Subject",
                    onChanged: (yuu) {},
                    text: "",
                  ),
                ),
              ],
            ),
            
            SizedBox(height: 20,),
            Center(
            child: ElevatedButton(onPressed: () =>{Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => AdminNavScreen()),
      
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
            )
          ],
        ),
      ),
    );
  }
}
