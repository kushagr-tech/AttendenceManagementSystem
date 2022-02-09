import 'package:attendence_management_system/pages/loginpages/loginPage.dart';
import 'package:flutter/material.dart';

class ForgetPass extends StatefulWidget {
  const ForgetPass({ Key? key }) : super(key: key);

  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Forget Password"),leading: BackButton(),),
    body: Column(
      children: [
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text("Enter Your Regestered Email for otp verification",style: TextStyle(fontSize: 20),),
        SizedBox(height: 20,),
        TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: 'Email ID',
                            hintText: 'Enter your Email ID'),
                      ),
                      SizedBox(height: 30,),
            ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LoginPage()),
                            );
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15),
                            ),
                            primary: (Color.fromRGBO(6, 0, 79, 1)),
                            fixedSize: Size(300, 60),
                          ),
                        ),
            ],
          ),
        ),
      ],
    ),
    );
  }
}