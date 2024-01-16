import 'package:flutter/material.dart';

class searchTitle extends StatelessWidget {
  final String title;
  const searchTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }
}
