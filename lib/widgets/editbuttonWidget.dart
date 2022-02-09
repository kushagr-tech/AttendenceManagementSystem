import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final IconData icon;
  const ButtonWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // ElevatedButton.icon(
        //   onPressed: onClicked ,

        //   icon:  Icon(Icons.person,),

        //   label: Text('Edit Profile'),

        //   style: ElevatedButton.styleFrom(
        //     shape: new RoundedRectangleBorder(
        //       borderRadius: new BorderRadius.circular(10.0)
        //       ),
        //   fixedSize: Size(300, 60),
        //   ),
        //   );
        ElevatedButton(
      onPressed: onClicked,
      child: Row(
        children: [
          Icon(
            icon,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.grey[600],
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          fixedSize: Size(300, 60),
          textStyle:
              const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
    );
  }
}
