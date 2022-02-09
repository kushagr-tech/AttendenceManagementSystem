import 'package:attendence_management_system/utils/names.dart';
import 'package:flutter/material.dart';

Widget dropdownButton(String? dropdownValue, List<String> string, String hint,){
  // switch (hint) {
  //   case "Program":
  //     dropdownValue = programdropdownValue;      
  //     break;
  //   default:
  // }
  void ChangeState(){

    switch (hint) {
    case "Program":
      programdropdownValue = dropdownValue!;      
      break;
    case "School":
      schooldropdownValue = dropdownValue!;      
      break;
    case "Branch":
      branchdropdownValue = dropdownValue!;      
      break;
    case "Year":
      yeardropdownValue = dropdownValue!;      
      break;
    case "Semester":
      semesterdropdownValue = dropdownValue!;      
      break;
    case "Batch":
      batchdropdownValue = dropdownValue!;      
      break;
    case "Subject":
      subjectdropdownValue = dropdownValue!;      
      break;
    case "Faculty":
      facultiesdropdownValue = dropdownValue!;      
      break;
    default:
  }
  }
  return  
  Container(
    child: Column(
      children: [
        Text(hint, style: TextStyle(fontSize: 20),),
        SizedBox(height: 5,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                      color: Colors.grey, style: BorderStyle.solid, width: 0.80),
                boxShadow: [BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                          ),]
                ),
          child:  
           DropdownButton<String>(     
                                    isExpanded: true,
                                    // hint: Text(hint,style: TextStyle(color: Colors.black),),
                                    value: dropdownValue,
                                    icon: const Icon(Icons.keyboard_arrow_down_outlined),
                                    elevation: 16,
                                    dropdownColor: Colors.grey[100],
                                    style: const TextStyle(color: Colors.black),
                                    underline: Container(
                                        height: 0,
                                    color: Colors.black),
                                    onChanged: (String? newval) {
                                        // setState((){
                                           dropdownValue
                                       = newval!;
                                    ChangeState();
                                        // });
                                        },
                                      
                          
                                    
                                    
                                    items: string.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
            
        ),
      ],
    ),
  );
}


class dropdown extends StatefulWidget {
 String DropdownValue = '';
 List<String> sTring=[];
 String Hint='';
dropdown({ Key? key ,required this.DropdownValue , required this.sTring, required this.Hint,}) : super(key: key);
  
  @override
  _dropdownState createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  late String dropdownValue ;
 late List<String> string;
 late String hint;
  void ChangeState(){

    switch (hint) {
    case "Program":
      programdropdownValue = dropdownValue;      
      break;
    case "School":
      schooldropdownValue = dropdownValue;      
      break;
    case "Branch":
      branchdropdownValue = dropdownValue;      
      break;
    case "Year":
      yeardropdownValue = dropdownValue;      
      break;
    case "Semester":
      semesterdropdownValue = dropdownValue;      
      break;
    case "Batch":
      batchdropdownValue = dropdownValue;      
      break;
    case "Subject":
      subjectdropdownValue = dropdownValue;      
      break;
    case "Faculty":
      facultiesdropdownValue = dropdownValue;      
      break;
    default:
  }
  }
void initState() { 
    super.initState();
    dropdownValue = widget.DropdownValue; 
    string = widget.sTring;
    hint=widget.Hint;    
    }

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Column(
      children: [
        Text(hint, style: TextStyle(fontSize: 20),),
        SizedBox(height: 5,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                      color: Colors.grey, style: BorderStyle.solid, width: 0.80),
                boxShadow: [BoxShadow(
                            color: Colors.grey,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 5.0,
                            spreadRadius: 1.0,
                          ),]
                ),
          child:  
           DropdownButton<String>(     
                                    isExpanded: true,
                                    // hint: Text(hint,style: TextStyle(color: Colors.black),),
                                    value: dropdownValue,
                                    icon: const Icon(Icons.keyboard_arrow_down_outlined),
                                    elevation: 16,
                                    dropdownColor: Colors.grey[100],
                                    style: const TextStyle(color: Colors.black),
                                    underline: Container(
                                        height: 0,
                                    color: Colors.black),
                                    onChanged: (String? newval) {
                                        setState((){
                                           dropdownValue
                                       = newval!;
                                    ChangeState();
                                        });
                                        },
                                      
                          
                                    
                                    
                                    items: string.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
            
        ),
      ],
    ),
  );
  }
}