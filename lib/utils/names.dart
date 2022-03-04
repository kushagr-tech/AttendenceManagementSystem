import 'package:flutter/material.dart';

List<String> Program = ["B.Tech", "MBA", "BBA", "B.Com"];
List<String> School = [
  "SCSIT",
  "SAME",
];
// List<String> Year = ["2021", "2022"];
List<String> Semester = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
];
List<String> Batch = [
  "B1",
  "B2",
  "B3",
  "B1 & B2"
];
List<String> Branch = [
  "C.S.I.T",
  "Mecha",
];
List<String> Subject = [
  "Artificial Intelegence",
  "TOC",
  "CCS",
  "Machine Learning"
  ];
List<String> Students = [
  "Aardhya",
  "Aashiv",
  "Aayush",
  "Abhinay",
  "Aditya",
  "Ashish Kumar Singh Sengar",
  "Akshat",
  "Alabhya",
  "Anand",
  "Anirudh",
  "Archana ",
  "Archit",
  "Arpit",
  "Charudatta",
  "Dipesh",
  "Divesh",
  "Dushyant",
  "Devanshu"
];
List<String> Month = ["Janurary", "Feburary", "March"];
List<String> Date = [
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "10",
  "11",
  "12",
  "13",
  "14",
  "15",
  "16",
  "17",
  "18",
  "19",
  "20",
  "21"
];
List<String> CollegeYear = [
  "1st",
  "2nd",
  "3rd",
];
List<String> Enrollment = [
  "2019btcs001",
  "2019btcs002",
  "2019btcs003",
  "2019btcs004",
  "2019btcs005",
  "2019btcs006",
  "2019btcs007",
  "2019btcs008",
  "2019btcs009",
  "2019btcs010",
  "2019btcs011",
  "2019btcs012",
  "2019btcs013",
  "2019btcs014",
  "2019btcs015",
  "2019btcs016",
  "2019btcs017",
  "2019btcs018",
  "2019btcs019"
];
List<String> StudentEmail = [
  "2019btcs001@student.suas.ac.in",
  "2019btcs002@student.suas.ac.in",
  "2019btcs003@student.suas.ac.in",
  "2019btcs004@student.suas.ac.in",
  "2019btcs005@student.suas.ac.in",
  "2019btcs006@student.suas.ac.in",
  "2019btcs007@student.suas.ac.in",
  "2019btcs008@student.suas.ac.in",
  "2019btcs009@student.suas.ac.in",
  "2019btcs010@student.suas.ac.in",
  "2019btcs011@student.suas.ac.in",
  "2019btcs012@student.suas.ac.in",
  "2019btcs013@student.suas.ac.in",
  "2019btcs014@student.suas.ac.in",
  "2019btcs015@student.suas.ac.in",
  "2019btcs016@student.suas.ac.in",
  "2019btcs017@student.suas.ac.in",
  "2019btcs018@student.suas.ac.in",
  "2019btcs019@student.suas.ac.in"
];
List<String> FacultyDOB = [
  "11/11/99"
];
List<String> FacultiesID = [
  "Facultybtcs001",
];
List<String> FacultiesEmailID = [
  "Facultybtcs001@suas.ac.in",
];
List<String> PhoneNo = ["9878768767"];
List<bool> StudentisActive = [
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
];
List<bool> FacultiesisActive = [
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
  true,
];
List<String> Faculties = [
  "Ashish bansal",
  "Neha Gupta",
  "Ashish bansal",
  "Manish Khule",
  "Ashish bansal",
  "Neha Gupta",
  "Ashish bansal",
  "Manish Khule",
  "Ashish bansal",
  "Neha Gupta",
  "Ashish bansal",
  "Manish Khule",
  "Ashish bansal",
  "Neha Gupta",
  "Ashish bansal",
  "Manish Khule",
];
List<int> isSelectedList = [
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
];
List attendencecolor = [
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
  Colors.white,
];
  //  0, /*Absent*/    1, /*Present*/    2 /*Absent*/
    String semesterdropdownValue = Semester[0];
    String batchdropdownValue = Batch[0];
    String schooldropdownValue = School[0];
    String subjectdropdownValue = Subject[0];
    String yeardropdownValue = CollegeYear[0];
    String programdropdownValue = Program[0];
    String branchdropdownValue = Branch[0];
    String facultiesdropdownValue = Faculties[0];   
    Map<String,String> values = {
      programdropdownValue:"MBA",
      semesterdropdownValue:"1",
      batchdropdownValue:"B1",
      schooldropdownValue:"SCSIT",
      subjectdropdownValue:"Artificial Intelegence",
      yeardropdownValue:"3rd",
      branchdropdownValue:"Mecha",
      facultiesdropdownValue:"Neha Gupta",
    };
