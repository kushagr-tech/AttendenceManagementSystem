import 'package:attendence_management_system/widgets/dropDownWidget.dart';
import 'package:attendence_management_system/pages/reportpages/reportPdfDownload.dart';
import 'package:attendence_management_system/utils/names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportGenration extends StatefulWidget {
  const ReportGenration({Key? key}) : super(key: key);

  @override
  _ReportGenrationState createState() => _ReportGenrationState();
}

class _ReportGenrationState extends State<ReportGenration> {
  @override
  Widget build(BuildContext context) {
     DateTime selectedDate = DateTime.now();
     DateTime selectedDate2 = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  Future<void> _selectDate2(BuildContext context) async {
    final DateTime? picked2 = await showDatePicker(
        context: context,
        initialDate: selectedDate2,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked2 != null && picked2 != selectedDate2)
      setState(() {
        selectedDate2 = picked2;
      });
  }
    // String yeardropdownValue = CollegeYear[0];
    // String batchdropdownValue = Batch[0];
    // String subjectdropdownValue = Subject[0];
    // String facultiesdropdownValue = Faculties[0];
    return Scaffold(
      appBar: AppBar(
        title: Text("Report"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            dropdown(DropdownValue:yeardropdownValue, sTring:CollegeYear,Hint: "Year"),
            SizedBox(
              height: 20,
            ),
            dropdown(DropdownValue:semesterdropdownValue, sTring:Semester,Hint: "Semester"),
            SizedBox(
              height: 20,
            ),
            dropdown(DropdownValue:batchdropdownValue, sTring:Batch, Hint:"Batch"),
            SizedBox(
              height: 20,
            ),
            dropdown(DropdownValue:subjectdropdownValue, sTring:Subject, Hint:"Subject"),
            // SizedBox(
            //   height: 20,
            // ),
            // dropdownButton(facultiesdropdownValue, sTring:Faculties, "Faculty"),
            SizedBox(height: 40,),
            // Container(
            //   height: 200,
            //   width: 200,
            //   child: CupertinoDatePicker(
            //       mode: CupertinoDatePickerMode.date,
            //       initialDateTime: DateTime(1969, 1, 1),
            //       onDateTimeChanged: (DateTime newDateTime) {
            //         // Do something
            //       },
            //     ),
            // ),
            // date picker
            Row(
              children: [
          SizedBox(width: 50,),
                Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
                Text("From :"),
                SizedBox(height: 10,),
                Text("${selectedDate.toLocal()}".split(' ')[0]),
                SizedBox(height: 20.0,),
                // ignore: deprecated_member_use
                RaisedButton(
                  color: Colors.red,
                  onPressed: () => _selectDate(context),
                  child: Text('Select date',style: TextStyle(color: Colors.white),),
                ),
          ],),
          SizedBox(width: 70,),
                Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
                Text("To :"),
                SizedBox(height: 10,),
                Text("${selectedDate2.toLocal()}".split(' ')[0]),
                SizedBox(height: 20.0,),
                // ignore: deprecated_member_use
                RaisedButton(
                  color: Colors.red,
                  onPressed: () => _selectDate2(context),
                  child: Text('Select date',style: TextStyle(color: Colors.white),),
                ),
          ],),
          // SizedBox(width: 20,),
              ],
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ReportPdfDownloadPage()),
      
                );}, child: Text("Genrate Report"),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(300, 40)
              ),
            ),
    
          ],
        ),
      ),
    );
  }
}
