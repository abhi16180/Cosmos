import 'package:flutter/material.dart';

class CustomDesign extends StatelessWidget {
  const CustomDesign({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [Colors.blueAccent, Colors.cyan]),
      ),
    );
  }
}
