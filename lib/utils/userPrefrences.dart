import 'package:attendence_management_system/model/userDetailModel.dart';
import 'package:attendence_management_system/utils/names.dart';

class UserPrefrences{
   static List<Faculty> sample=[]
   ..add(
     Faculty(
    imagePath: 
    "https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png"
    // "https://miro.medium.com/max/1400/0*qfJWOn_IjKoc305B.jpg"
    //"https://source.unsplash.com/featured/?profile"
    ,
    facultyName: "Faculty Name",
    email:"faculty.email@suas.ac.in", 
    DOB: '12/12/12', 
    phoneNo: '9876987697',
    facultyId: "123",
    subject: "Subject Name",
   )
   )
   ..add(Faculty(
    imagePath: 
    "https://miro.medium.com/max/1400/0*qfJWOn_IjKoc305B.jpg"
    //"https://source.unsplash.com/featured/?profile"
    ,
    facultyName: Faculties[1],
    email:FacultiesEmailID[0], 
    DOB: FacultyDOB[0], 
    phoneNo: PhoneNo[0],
    facultyId: FacultiesID[0],
    subject: Subject[0],
   ))
   
   ;
  
  // UserPrefrences(){

  // for (int i=0 ; i<Faculties.length;i++) {
    
  // sample = Faculty(
  //   imagePath: 
  //   "https://miro.medium.com/max/1400/0*qfJWOn_IjKoc305B.jpg",
  //   //"https://source.unsplash.com/featured/?profile",
  //   facultyName: Faculties[i],
  //   email:"faculty.email@suas.ac.in", 
  //   DOB: '12/12/12', 
  //   phoneNo: '9876987697',
  //   facultyId: "123",
  //   subject: "Subject Name",
  // ) as List<Faculty>;  
  // }
  // }
  static const myUser = Faculty(
    imagePath: 
    "https://www.pavilionweb.com/wp-content/uploads/2017/03/man.png"
    // "https://miro.medium.com/max/1400/0*qfJWOn_IjKoc305B.jpg"
    //"https://source.unsplash.com/featured/?profile"
    ,
    facultyName: "Faculty Name",
    email:"faculty.email@suas.ac.in", 
    DOB: '12/12/12', 
    phoneNo: '9876987697',
    facultyId: "123",
    subject: "Subject Name",
  );  
  static const student = Student(
    studentEnrollmentNo: "2019btcs002", 
    studentName: "Abhinay", 
    studentemail: "2019btcs002@@Student.com", 
    semester: "V", 
    batch: "B1", 
    branch: "C.S.I.T.", 
    studingInYear: "3rd", 
    program: "Btech"
    );  
}