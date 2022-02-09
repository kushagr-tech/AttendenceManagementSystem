import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final double size;

  const ProfileWidget({
    Key? key,
    required this.imagePath,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: buildImage(),
    );
  }

  Widget buildImage() {
    // final image =  FadeInImage(placeholder: Image.asset('assets/Profile_Photo.png'), image: NetworkImage(imagePath));
    final image = NetworkImage(imagePath);
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          height: size,
          width: size,
        ),
      ),
    );
  }
}
