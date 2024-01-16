import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:netflix/core/colors/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              KWidth,
              Text(
                title,
                style: GoogleFonts.montserrat(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Icon(Icons.cast, color: Colors.white, size: 30),
              KWidth,
              Container(
                color: Colors.blue,
                width: 30,
                height: 30,
              )
            ],
          ),
          kHeight
        ],
      ),
    );
  }
}
