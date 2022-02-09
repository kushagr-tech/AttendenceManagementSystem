import 'package:flutter/material.dart';

class ReportPdfDownloadPage extends StatefulWidget {
  const ReportPdfDownloadPage({Key? key}) : super(key: key);

  @override
  _ReportPdfDownloadPageState createState() => _ReportPdfDownloadPageState();
}

class _ReportPdfDownloadPageState extends State<ReportPdfDownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 50,),
          Center(
            child: Text(
              'REPORT',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
            ),
          ),
          Center(
            child: Container(
              height: 300,
              width: 300,
              child: Image.asset('assets/PdfDownload.png'),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: TextButton.icon(
              onPressed: () {},
              label: Text(
                'Download',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              icon: Icon(
                Icons.file_download_outlined,
                color: Colors.white,
                size: 20,
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(6, 0, 79, 1),
                  ),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 110)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)))),
            ),
          ),
        ],
      ),
    );
  }
}
