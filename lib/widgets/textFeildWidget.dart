import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String label;
  final String text;
  final ValueChanged<String> onChanged;

  const TextFieldWidget({
    Key? key,
    required this.label,
    required this.text,
    required this.onChanged,
  }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late final TextEditingController controller;
  @override
    bool _isObscure = true;

  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0 ,right: 20.0),
            child: Text(
              widget.label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          const SizedBox(
            height: 8,
          ),

//   obscureText: _isObscure,
                      //   decoration: InputDecoration(
                      //     border: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(15)),
                      //     labelText: 'Password',
                      //     hintText: 'Password',
                      //     suffixIcon: IconButton(
                      //       icon: Icon(_isObscure
                      //           ? Icons.visibility_off_sharp
                      //           : Icons.visibility_sharp),
                      //       onPressed: () {
                      //         setState(() {
                      //           _isObscure = !_isObscure;
                      //         });
                      //       },
                      //     ),
                      //   ),
                      // ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0 ,right: 20.0),
            child: TextField(
                // obscureText: _isObscure,
              decoration: InputDecoration(
               
                // suffixIcon: IconButton(
                //             icon: Icon(_isObscure
                //                 ? Icons.visibility_off_sharp
                //                 : Icons.visibility_sharp),
                //             onPressed: () {
                //               setState(() {
                //                 _isObscure = !_isObscure;
                //               });
                //             },
                //           ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              controller: controller,
            ),
          )
        ],
      );
}
