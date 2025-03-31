import 'package:flutter/material.dart';

class MyBottum extends StatelessWidget {
  const MyBottum({super.key, required this.colour, required this.title, required this.onPress});

  final Color colour;
  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(10),
        elevation: 5,
        child: MaterialButton(
          onPressed: onPress,

          minWidth: 200,
          height: 42,
          child: Text(title, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
