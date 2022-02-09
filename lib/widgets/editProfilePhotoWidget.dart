import 'package:flutter/material.dart';

class EditProfileWidget extends StatelessWidget {
  final String imagePath;

  const EditProfileWidget({
    Key?key,
    required this.imagePath, required Future<Null> Function() onClicked,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    

    return Center(
      child: Stack(children:[
        buildImage(),
        Positioned(
          bottom: 3,
          right: 6,
          child: buildEditIcon(color))
      ]
      ),
    );
  }
  Widget buildImage(){
    final image =  NetworkImage(imagePath);
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          height: 192.0,
          width: 192.0,
        ),
      ),
    );
  }
  Widget buildEditIcon(Color color) => buildCircle(
    color: color,
    all: 8,
    child: Icon(
      Icons.edit,
      color:Colors.white,
      size: 32,
    ),
  );
  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) => ClipOval(
    child: Container(
      padding: EdgeInsets.all(all),
      color: color,
      child: child,
    ),
  );
}
