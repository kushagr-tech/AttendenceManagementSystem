import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;

  const ProfileWidget({
    Key?key,
    required this.imagePath,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    

    return Center(
      child: buildImage(),
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
          height: 256.0,
          width: 256.0,
        ),
      ),
    );
  }
}
