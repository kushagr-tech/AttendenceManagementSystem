// ignore_for_file: non_constant_identifier_names

class Faculty{
    final String imagePath;
    final String facultyId;
    final String facultyName;
    final String email;
    final String phoneNo;
    //final NumberInputElement phoneNo;
    final String DOB;
    final String subject;

    bool isActive;

     Faculty({
      required this.imagePath, 
      required this.facultyName, 
      required this.facultyId, 
      required this.email, 
      required this.phoneNo, 
      required this.subject,  
      required this.DOB,  
      this.isActive = true,
});
}
class Student{
    final String studentEnrollmentNo;
    final String studentName;
    final String studentemail;
    final String semester;
    final String program;
    final String batch;
    final String branch;
    final String studingInYear;
    bool isActive;

     Student({
      required this.studentEnrollmentNo, 
      required this.studentName, 
      required this.studentemail, 
      required this.semester,  
      required this.batch,  
      required this.branch,  
      required this.studingInYear,  
      required this.program,  
      this.isActive = true,
});
}
// class Attendence{
//   final String date;
//   final String subject;
//   final String semester;
//   final String studentEnrollment;
//   final String status;
//   final String time;
//      -----------------student list 
//     array and objects of students
//   const Attendence({
//     required this.semester,
//     required this.date,
//     required this.status,
//     required this.studentEnrollment,
//     required this.subject,
//     required this.time
//   });
// }