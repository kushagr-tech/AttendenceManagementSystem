import 'package:attendence_management_system/model/userDetailModel.dart';
import 'package:attendence_management_system/pages/addpages/add_faculty.dart';
import 'package:attendence_management_system/pages/editpages/edit_faculty.dart';
import 'package:attendence_management_system/utils/names.dart';
import 'package:attendence_management_system/utils/userPrefrences.dart';
import 'package:flutter/material.dart';

class FacultyDetailsPage extends StatefulWidget {
  const FacultyDetailsPage({Key? key}) : super(key: key);

  @override
  _FacultyDetailsPageState createState() => _FacultyDetailsPageState();
}

class _FacultyDetailsPageState extends State<FacultyDetailsPage> {
    final List<Faculty> user = UserPrefrences.FacultyList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Faculty Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: new ListView.builder(
            itemCount: user.length,
            itemBuilder: (BuildContext context, int index) =>
                buildFacultyDetailsCard(context, index)),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 150),
        child: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddFaculty()),
            );
          },
          elevation: 15,
          label: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: const Text(
              'Add',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          ),
          // icon: const Icon(Icons.thumb_up),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }

  buildFacultyDetailsCard(BuildContext context, int index) {
    var index2 = index + 1;
    return new Container(
      child: Card(
        elevation: 5,
        shadowColor: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(index2.toString()),
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Text(
                        user[index].facultyId,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20.0),
                      ),
                      Text(
                        user[index].facultyName,
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Text(
                        user[0].email,
                        style: TextStyle(fontSize: 15.0),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25,),
                          Expanded(
                            child: Text(
                              user[0].phoneNo,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 17.0),
                            ),
                          ),
//?????????????????????????????????????????????????????????????????????????????????????????????????                       
                          Expanded(
                            child: Text(
                              "Sem : " + Semester[0],
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 17.0),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Subject : " + Subject[0],
                        style: TextStyle(color: Colors.grey, fontSize: 17.0),
                      ),
                    ],
                  )),
//?????????????????????????????????????????????????????????????????????????????????????????????????
                  Column(
                    children: [
                      Text("Status"),
                      Switch(
                          value: user[index].isActive,
                          onChanged: (bool newValue) {
                            setState(() {
                              user[index].isActive = !user[index].isActive;
                            });
                          },
                        ),
                                              ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => EditFaculty()),
                          );
                        },
                        child: Text("Edit"),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.grey[600],
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(10.0)),
                            // fixedSize: Size(200, 40),
                            elevation: 5,
                            textStyle: const TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500)),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
