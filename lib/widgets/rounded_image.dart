//Packages
import 'package:flutter/material.dart';

class RoundedImageNetwork extends StatelessWidget {
  //final String imagePath;
  final double size;

  RoundedImageNetwork({
    required Key key,
    //required this.imagePath,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        image: DecorationImage(
          //image: NetworkImage(imagePath),
          image: AssetImage('assets/images/logo.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(size / 2),
        ),
        color: Colors.white,
      ),
    );
  }
}
